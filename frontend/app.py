import streamlit as st
from PIL import Image
import requests
from streamlit_autorefresh import st_autorefresh

API_URL = "http://127.0.0.1:8000"

st.set_page_config(
    page_title="Analyse alimentaire IA",
    page_icon="🍽️",
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
    font-size: 38px;
    font-weight: 700;
    color: #1f2a60;
    margin-bottom: 5px;
}

.subtitle {
    font-size: 18px;
    color: #6b7280;
    margin-bottom: 25px;
}

[data-testid="stFileUploader"] section {
    border-radius: 24px;
    border: 2px dashed #c7bcff;
    background: rgba(255,255,255,0.65);
    padding: 25px;
}
</style>
""", unsafe_allow_html=True)


st.markdown(
    '<div class="main-title">🍽️ Analyse intelligente des aliments</div>',
    unsafe_allow_html=True
)

import streamlit as st
from PIL import Image
import requests

API_URL = "http://127.0.0.1:8000"

def api_disponible():
    try:
        response = requests.get(f"{API_URL}/health", timeout=2)
        return response.status_code == 200
    except requests.exceptions.RequestException:
        return False


st.set_page_config(
    page_title="Analyse alimentaire IA",
    page_icon="🍽️",
    layout="wide"
)

if not api_disponible():

    with st.status("Connexion au service d'analyse...", expanded=False) as status:
        status.update(
            label="🔴 Impossible de joindre le service",
            state="error"
        )

        st.error("""
            Le backend FastAPI n'est pas disponible.            
            """)
        st.info("Nouvelle tentative de connexion dans 5 secondes...")

        st_autorefresh(interval=5000, key="healthcheck")
        st.stop()

st.markdown(
    '<div class="subtitle">'
    "Téléversez une image de votre plat pour détecter automatiquement les aliments présents."
    '</div>',
    unsafe_allow_html=True
)


image_home = Image.open("assets/home.png")

col1, col2, col3 = st.columns([1, 2.5, 1])

with col2:
    st.image(image_home, use_container_width=True)

    fichier = st.file_uploader(
        "Téléverser une image",
        type=["jpg", "jpeg", "png"]
    )

    if fichier is not None:
        with st.spinner("Téléversement de l’image en cours..."):
            st.session_state["image"] = fichier

        st.switch_page("pages/resultat_detection.py")

        