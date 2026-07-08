import streamlit as st
import requests
import pandas as pd
import base64

from io import BytesIO
from PIL import Image


st.set_page_config(
    page_title="Résultat de l’analyse",
    page_icon="🔍",
    layout="wide"
)


API_URL = "http://127.0.0.1:8000/predict"


st.markdown("""
<style>
.stApp {
    background: linear-gradient(180deg, #f5f3ff 0%, #f7f7fc 50%, #ffffff 100%);
}

.block-container {
    padding-top: 2rem;
    max-width: 1200px;
}

.main-title {
    font-size: 36px;
    font-weight: 700;
    color: #1f2a60;
    margin-bottom: 20px;
}

.stTabs [data-baseweb="tab-list"] {
    gap: 10px;
}

.stTabs [data-baseweb="tab"] {
    height: 50px;
    border-radius: 14px;
    padding-left: 20px;
    padding-right: 20px;
    background-color: #ece9ff;
    color: #4b5563;
}

.stTabs [aria-selected="true"] {
    background-color: #dcd6ff;
    color: #1f2a60;
}

.stButton > button {
    border-radius: 14px;
    background-color: #7c6cff;
    color: white;
    border: none;
    height: 45px;
    font-weight: 600;
    width: 100%;
}

.stButton > button:hover {
    background-color: #6958f5;
    color: white;
}
</style>
""", unsafe_allow_html=True)


# --------------------------------------------------
# Vérification
# --------------------------------------------------

if "image" not in st.session_state:

    st.warning("Aucune image n’a été téléversée.")

    if st.button("Retourner à l’accueil"):
        st.switch_page("app.py")

    st.stop()


image_file = st.session_state["image"]


st.markdown(
    '<div class="main-title">🔍 Résultat de l’analyse alimentaire</div>',
    unsafe_allow_html=True
)


# --------------------------------------------------
# Appel API
# --------------------------------------------------

try:

    with st.spinner("Analyse de l’image en cours..."):

        image_file.seek(0)

        response = requests.post(
            API_URL,
            files={
                "file": (
                    image_file.name,
                    image_file,
                    image_file.type
                )
            },
            timeout=120
        )

    if response.status_code != 200:

        st.error("Erreur lors de l'analyse de l'image.")

        st.json(response.json())

        st.stop()


    data = response.json()


except requests.exceptions.ConnectionError:

    st.error("Impossible de se connecter à l'API FastAPI.")

    st.info("Vérifiez que l'API est démarrée avec :")

    st.code("uvicorn main:app --reload")

    st.stop()


except requests.exceptions.Timeout:

    st.error("Le délai d'attente est dépassé.")

    st.stop()


except Exception as e:

    st.exception(e)

    st.stop()


# --------------------------------------------------
# Image annotée
# --------------------------------------------------

image_bytes = base64.b64decode(data["image"])

image_annotee = Image.open(BytesIO(image_bytes))


# --------------------------------------------------
# Image originale
# --------------------------------------------------

image_file.seek(0)

image_originale = Image.open(image_file).convert("RGB")


# --------------------------------------------------
# DataFrame
# --------------------------------------------------

df_resultats = pd.DataFrame(data["foods"])


if not df_resultats.empty:

    df_resultats.rename(
        columns={
            "aliment": "Aliment détecté",
            "nom_modele": "Nom modèle",
            "confiance": "Certitude (%)",
            "calories_100g": "Calories / 100g",
            "proteines_100g": "Protéines / 100g",
            "glucides_100g": "Glucides / 100g",
            "lipides_100g": "Lipides / 100g",
            "conseil": "Conseil"
        },
        inplace=True
    )


onglet1, onglet2, onglet3 = st.tabs(
    [
        "Résultat de l’analyse",
        "Image originale",
        "Conseils nutritionnels"
    ]
)

# --------------------------------------------------
# Onglet 1
# --------------------------------------------------

with onglet1:

    col1, col2 = st.columns([1.2, 1])

    with col1:

        st.image(
            image_annotee,
            caption="Segmentation et détection",
            use_container_width=True
        )

    with col2:

        st.subheader("Aliments détectés")

        if not df_resultats.empty:

            st.dataframe(
                df_resultats,
                use_container_width=True,
                hide_index=True,
                height=500
            )

            st.caption(
                f"Nombre d'aliments détectés : {len(df_resultats)}"
            )

        else:

            st.warning("Aucun aliment détecté.")

        st.divider()

        if st.button("Analyser une autre image"):

            st.session_state.pop("image", None)

            st.switch_page("app.py")


# --------------------------------------------------
# Onglet 2
# --------------------------------------------------

with onglet2:

    st.image(
        image_originale,
        caption="Image originale",
        use_container_width=True
    )


# --------------------------------------------------
# Onglet 3
# --------------------------------------------------

with onglet3:

    st.subheader("Suggestions nutritionnelles")

    if df_resultats.empty:

        st.warning("Aucun conseil nutritionnel disponible.")

    else:

        for _, row in df_resultats.iterrows():

            st.markdown(f"""
### 🥗 {row["Aliment détecté"]}

🔥 **Calories :**
{row["Calories / 100g"]} kcal / 100 g

💪 **Protéines :**
{row["Protéines / 100g"]} g / 100 g

🍞 **Glucides :**
{row["Glucides / 100g"]} g / 100 g

🧈 **Lipides :**
{row["Lipides / 100g"]} g / 100 g

💡 **Conseil nutritionnel**

{row["Conseil"]}

---
""")