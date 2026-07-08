import json

from config import NUTRITION_PATH


with open(NUTRITION_PATH, encoding="utf-8") as f:
    nutrition = json.load(f)


def get_food(food_name):
    return nutrition.get(food_name, {})