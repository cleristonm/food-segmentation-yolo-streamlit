import mlflow

mlflow.set_tracking_uri("http://localhost:5000")
mlflow.set_experiment("test-foodseg")

with mlflow.start_run():
    mlflow.log_param("epochs", 10)
    mlflow.log_metric("accuracy", 0.95)

print("Run enregistré")