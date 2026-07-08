from ultralytics import YOLO
from config import MODEL_PATH

model = YOLO(MODEL_PATH)

def detect(image_path):

    result = model.predict(
        source=image_path,
        conf=0.25,
        save=False
    )[0]

    return result