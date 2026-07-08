from pydantic import BaseModel
from typing import List


class FoodDetection(BaseModel):
    aliment: str
    nom_modele: str
    confiance: float
    calories_100g: float | None = None
    proteines_100g: float | None = None
    glucides_100g: float | None = None
    lipides_100g: float | None = None
    conseil: str


class PredictionResponse(BaseModel):
    foods: List[FoodDetection]
    image: str