import streamlit as st
from PIL import Image


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
            image = Image.open(fichier).convert("RGB")
            st.session_state["image_originale"] = image

        st.switch_page("pages/resultat_detection.py")