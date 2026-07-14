from database.connection import SessionLocal
from database.models import Food


def get_food(class_name: str):

    db = SessionLocal()

    try:
        food = (
            db.query(Food)
            .filter(Food.class_name == class_name)
            .first()
        )

        if food is None:
            return {}

        return {
            "nom_fr": food.nom_fr,
            "groupe": food.groupe,
            "calories_100g": food.calories_100g,
            "proteines_100g": food.proteines_100g,
            "glucides_100g": food.glucides_100g,
            "lipides_100g": food.lipides_100g,
            "conseil": food.conseil,
        }

    finally:
        db.close()