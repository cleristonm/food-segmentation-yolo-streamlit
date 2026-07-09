import mlflow
from mlflow import MlflowClient
from ultralytics import YOLO

from config import TRACKING_URI, EXPERIMENT_NAME

mlflow.set_tracking_uri(TRACKING_URI)

client = MlflowClient()


def load_best_model():

    experiment = client.get_experiment_by_name(EXPERIMENT_NAME)

    if experiment is None:
        raise Exception(f"Expérience '{EXPERIMENT_NAME}' introuvable.")

    runs = client.search_runs(
        experiment_ids=[experiment.experiment_id],
        order_by=["metrics.map50_mask DESC"],
        max_results=1,
    )

    if not runs:
        raise Exception("Aucun modèle trouvé.")

    best_run = runs[0]

    run_id = best_run.info.run_id

    print(f"Best Run : {run_id}")
    print(
        f"mAP50 Mask : "
        f"{best_run.data.metrics.get('map50_mask')}"
    )

    artifact_uri = (
        f"runs:/{run_id}/training/weights/best.pt"
    )

    local_model = mlflow.artifacts.download_artifacts(
        artifact_uri=artifact_uri
    )

    return YOLO(local_model)


model = load_best_model()


def detect(image_path):

    result = model.predict(
        source=image_path,
        conf=0.25,
        save=False
    )[0]

    return result