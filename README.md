# 🍽️ Analyse intelligente des aliments avec YOLO et Streamlit

Application web développée avec Streamlit permettant de détecter et segmenter automatiquement les aliments présents dans une image à l’aide d’un modèle YOLO entraîné sur un dataset de segmentation alimentaire.

---

# 📸 Aperçu

L’utilisateur peut :

- téléverser une image d’un plat ;
- lancer automatiquement une analyse IA ;
- visualiser les aliments détectés ;
- consulter le niveau de confiance de chaque détection ;
- afficher l’image originale et l’image segmentée.

---

# 🧠 Technologies utilisées

- Python
- Streamlit
- YOLO (Ultralytics)
- OpenCV
- Pandas
- Pillow

---

# 📂 Structure du projet

```text
Food Segmentation/
├── app.py
├── pages/
│   └── resultat_detection.py
├── assets/
│   └── home.png
├── models/
│   └── best.pt
├── requirements.txt
└── README.md