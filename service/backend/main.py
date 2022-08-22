import asyncio
from email import generator
import time
import uuid
from concurrent.futures import ProcessPoolExecutor
from functools import partial
from PIL import Image
from fastapi import FastAPI
from pydantic import BaseModel, ValidationError
from fastapi.responses import Response
from typing import Generator
from starlette.responses import StreamingResponse
import io
import PIL

import uvicorn
from fastapi import File
from fastapi import FastAPI
from fastapi import UploadFile
from ekorpkit import eKonf


app = FastAPI()
disco_cfg = eKonf.compose("model/disco")
disco = eKonf.instantiate(disco_cfg)


@app.get("/")
def read_root():
    return {"message": "Welcome to the ekorpkit API"}


@app.get("/version")
def read_version():
    return {"version": eKonf.__version__}


@app.get("/config")
def read_config(config_group: str = "model/disco"):
    return eKonf.compose(config_group, return_as_dict=True)


@app.get("/env")
def read_env():
    return eKonf.env().dict()


class ImagineRequest(BaseModel):
    text_prompts: str = "Beautiful photorealistic rendering of Jeju Island"
    batch_name: str = str(uuid.uuid4())
    steps = 250
    display_rate = 10


@app.post("/disco")
async def imagine(req: ImagineRequest):
    images = get_image(req)
    reponse = StreamingResponse(images, media_type="image/png")
    return reponse


def get_image(req: ImagineRequest):
    for sample in disco.imagine_generator(**req.dict()):
        image = sample["image"]
        image_as_bytes = image_to_bytearray(image)
        yield image_as_bytes


def image_to_bytearray(image: Image) -> bytes:
    img_bytearr = io.BytesIO()
    image.save(img_bytearr, format="png")
    img_bytearr = img_bytearr.getvalue()
    return img_bytearr


if __name__ == "__main__":
    uvicorn.run("main:app", host="0.0.0.0", port=8080)
