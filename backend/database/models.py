from sqlalchemy import Column, Integer, String, Float, Text
from database.connection import Base


class Food(Base):
    __tablename__ = "foods"

    id = Column(Integer, primary_key=True, index=True)

    # Nom de la classe retournée par le modèle YOLO
    class_name = Column(String(100), unique=True, nullable=False, index=True)

    # Nom affiché à l'utilisateur
    nom_fr = Column(String(100), nullable=False)

    # Groupe alimentaire
    groupe = Column(String(100), nullable=True)

    # Valeurs nutritionnelles pour 100 g
    calories_100g = Column(Float, nullable=False)
    proteines_100g = Column(Float, nullable=False)
    glucides_100g = Column(Float, nullable=False)
    lipides_100g = Column(Float, nullable=False)

    # Conseil nutritionnel
    conseil = Column(Text, nullable=True)