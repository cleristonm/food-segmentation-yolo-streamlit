import streamlit as st
from ultralytics import YOLO
import tempfile
import pandas as pd
import time


st.set_page_config(
    page_title="Résultat de l’analyse",
    page_icon="🔍",
    layout="wide"
)

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


@st.cache_resource
def charger_modele():
    return YOLO("models/best.pt")


model = charger_modele()


if "image_originale" not in st.session_state or st.session_state["image_originale"] is None:
    st.warning("Aucune image n’a été téléversée.")

    if st.button("Retourner à l’accueil"):
        st.switch_page("app.py")

    st.stop()


st.markdown(
    '<div class="main-title">🔍 Résultat de l’analyse alimentaire</div>',
    unsafe_allow_html=True
)


image = st.session_state["image_originale"]

with tempfile.NamedTemporaryFile(delete=False, suffix=".jpg") as tmp:
    image.save(tmp.name)
    image_path = tmp.name


with st.spinner("Analyse de l’image en cours avec le modèle YOLO..."):
    time.sleep(1)

    results = model.predict(
        source=image_path,
        conf=0.25,
        save=False
    )


result = results[0]

image_annotee = result.plot()
image_annotee = image_annotee[:, :, ::-1]


donnees = []

if result.boxes is not None and len(result.boxes) > 0:
    for box in result.boxes:
        classe_id = int(box.cls[0])
        score = float(box.conf[0])
        nom_aliment = model.names[classe_id]

        donnees.append({
            "Aliment détecté": nom_aliment,
            "Certitude (%)": round(score * 100, 2)
        })


df_resultats = pd.DataFrame(
    donnees,
    columns=["Aliment détecté", "Certitude (%)"]
)


onglet1, onglet2 = st.tabs([
    "Résultat de l’analyse",
    "Image originale"
])


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

        if len(df_resultats) > 0:
            st.dataframe(
                df_resultats,
                use_container_width=True,
                hide_index=True
            )

            if result.masks is not None:
                st.caption(
                    f"Zones segmentées détectées : {len(result.masks.data)}"
                )
        else:
            st.warning("Aucun aliment détecté.")

        st.divider()

        if st.button("Analyser une autre image"):
            st.session_state["image_originale"] = None
            st.switch_page("app.py")


with onglet2:
    st.image(
        image,
        caption="Image originale",
        width=700
    )