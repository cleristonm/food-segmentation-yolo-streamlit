import requests

API_URL = "http://127.0.0.1:8000"


def predict(image_file):
    response = requests.post(
        f"{API_URL}/predict",
        files={
            "file": (
                image_file.name,
                image_file,
                image_file.type
            )
        },
        timeout=60
    )

    response.raise_for_status()

    return response.json()