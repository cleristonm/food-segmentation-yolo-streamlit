from pathlib import Path

BASE_DIR = Path(__file__).resolve().parent

MLFLOW_USER = "mlflowsuperuser"
MLFLOW_PASS = "wfu:1H6B_pFLe',2\""
MLFLOW_HOST = "cleristonm.duckdns.org"

TRACKING_URI = (
    f"http://{MLFLOW_USER}:{MLFLOW_PASS}@{MLFLOW_HOST}:5000"
)

EXPERIMENT_NAME = "foodseg-yolo"

NUTRITION_PATH = BASE_DIR / "assets" / "nutrition.json"