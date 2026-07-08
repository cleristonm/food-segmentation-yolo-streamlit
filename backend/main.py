from fastapi import FastAPI
from routers.predict import router

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