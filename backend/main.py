print("1 - Début de main.py")
from fastapi import FastAPI
print("2 - FastAPI importé")
from routers.predict import router
print("3 - Router importé")
app = FastAPI(
    title="Food AI API",
    description="API de détection alimentaire avec YOLOv11 Segmentation",
    version="1.0.0"
)

app.include_router(router)


@app.get("/")
def home():
    return {
        "message": "Food AI API",
        "documentation": "/docs"
    }


@app.get("/health", tags=["Health"])
def health():
    return {
        "status": "UP",
        "message": "API disponible"
    }

