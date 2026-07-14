import mlflow
from mlflow import MlflowClient
from ultralytics import YOLO
from datetime import datetime
from config import TRACKING_URI, EXPERIMENT_NAME

mlflow.set_tracking_uri(TRACKING_URI)

client = MlflowClient()


def load_best_model():

    experiment = client.get_experiment_by_name(EXPERIMENT_NAME)

    if experiment is None:
        raise RuntimeError(
            f"Expérience '{EXPERIMENT_NAME}' introuvable."
        )

    runs = client.search_runs(
        experiment_ids=[experiment.experiment_id],
        filter_string="attributes.status = 'FINISHED'",
        order_by=["metrics.map50_mask DESC"],
        max_results=1,
    )

    if len(runs) == 0:
        raise RuntimeError("Aucun run terminé trouvé.")

    best_run = runs[0]

    metric = best_run.data.metrics.get("map50_mask")

    if metric is None:
        raise RuntimeError(
            "Le meilleur run ne possède pas la métrique map50_mask."
        )

    run_id = best_run.info.run_id

    artifact_uri = (
        f"runs:/{run_id}/training/weights/best.pt"
    )

    run_date = datetime.fromtimestamp(
        best_run.info.start_time / 1000
    )

    print("=" * 60)
    print("Chargement du meilleur modèle MLflow")
    print()
    print(f"Run ID        : {run_id}")
    print(f"Date          : {run_date:%Y-%m-%d %H:%M:%S}")
    print(f"YOLO          : {best_run.data.params.get('model_name')}")
    print(f"Seed          : {best_run.data.params.get('seed')}")
    print(f"Epochs        : {best_run.data.params.get('epochs')}")
    print(f"mAP50 Mask    : {metric:.4f}")
    print(f"Artifact      : {artifact_uri}")
    print("=" * 60)

    local_model = mlflow.artifacts.download_artifacts(
        artifact_uri=artifact_uri
    )

    print(f"Modèle téléchargé : {local_model}")
    print("Modèle YOLO prêt.")

    return YOLO(local_model)


model = load_best_model()


def detect(image_path):

    result = model.predict(
        source=image_path,
        conf=0.25,
        save=False
    )[0]

    return result