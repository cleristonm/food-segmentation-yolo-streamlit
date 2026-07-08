
from fastapi import APIRouter, UploadFile, File, HTTPException
from schemas.response import PredictionResponse, FoodDetection
from services.detection import detect
from services.nutrition import get_food
from utils.image_utils import image_to_base64
import logging

from PIL import Image
import tempfile
import numpy as np
import os


logging.basicConfig(level=logging.INFO)

logger = logging.getLogger(__name__)


router = APIRouter(
    prefix="/predict",
    tags=["Prediction"]
)


@router.post(
    "",
    response_model=PredictionResponse,
    summary="Détecter les aliments d'une image",
    description="Analyse une image avec YOLOv11 Segmentation et retourne les aliments détectés ainsi que l'image annotée."
)

async def predict(file: UploadFile = File(...)):
    logger.info("Nouvelle prédiction")

    # Vérification du type de fichier
    if file.content_type not in [
        "image/jpeg",
        "image/jpg",
        "image/png"
    ]:
        raise HTTPException(
            status_code=400,
            detail="Le fichier doit être une image JPG ou PNG."
        )

    temp_path = None

    try:

        # Sauvegarde temporaire
        image = Image.open(file.file).convert("RGB")

        with tempfile.NamedTemporaryFile(
            delete=False,
            suffix=".jpg"
        ) as temp:

            image.save(temp.name)
            temp_path = temp.name

        # Détection
        result = detect(temp_path)

        # Image annotée
        annotated = result.plot()
        annotated = annotated[:, :, ::-1]

        foods = []

        # Parcours des objets détectés
        if result.boxes is not None:

            for box in result.boxes:

                class_id = int(box.cls[0])
                confidence = float(box.conf[0])

                model_name = result.names[class_id]

                nutrition = get_food(model_name)

                foods.append(
                    FoodDetection(
                        aliment=nutrition.get("nom_fr", model_name),
                        nom_modele=model_name,
                        confiance=round(confidence * 100, 2),
                        calories_100g=nutrition.get("calories_100g"),
                        proteines_100g=nutrition.get("proteines_100g"),
                        glucides_100g=nutrition.get("glucides_100g"),
                        lipides_100g=nutrition.get("lipides_100g"),
                        conseil=nutrition.get(
                            "conseil",
                            "Aucun conseil nutritionnel disponible."
                        )
                    )
                )

        image_base64 = image_to_base64(annotated)

        return PredictionResponse(
            foods=foods,
            image=image_base64
        )

    except Exception as e:

        raise HTTPException(
            status_code=500,
            detail=str(e)
        )

    finally:

        if temp_path and os.path.exists(temp_path):
            os.remove(temp_path)