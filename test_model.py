# Import du modèle YOLO depuis Ultralytics
from ultralytics import YOLO

# Permet de parcourir les fichiers du dossier
from pathlib import Path

# Chargement du modèle entraîné
model = YOLO("models/best.pt")

# Dossier contenant les images
dossier_images = Path("images")

# Extensions supportées
extensions = ["*.jpg", "*.jpeg", "*.png"]

# Liste de toutes les images
liste_images = []

for ext in extensions:
    liste_images.extend(dossier_images.glob(ext))

# Vérification
if len(liste_images) == 0:
    print("Aucune image trouvée dans le dossier images/")
    exit()

# Boucle sur toutes les images
for image_path in liste_images:

    print("\n==============================")
    print(f"Analyse de : {image_path.name}")
    print("==============================")

    # Exécution de la prédiction
    results = model.predict(
        source=str(image_path),
        conf=0.25,
        save=True
    )

    # Affichage des résultats
    for result in results:

        print("\nRésultats de segmentation :")

        # Vérification des masques
        if result.masks is not None:
            print("Nombre de zones segmentées :", len(result.masks.data))
        else:
            print("Aucun masque détecté.")

        # Vérification des bounding boxes
        if result.boxes is not None:

            for box in result.boxes:

                classe_id = int(box.cls[0])
                score = float(box.conf[0])

                nom_classe = model.names[classe_id]

                print(f"Classe : {nom_classe}")
                print(f"Confiance : {score:.2f}")
                print("---")

        else:
            print("Aucune boîte détectée.")

print("\nAnalyse terminée.")
print("Résultats sauvegardés dans runs/segment/predict/")