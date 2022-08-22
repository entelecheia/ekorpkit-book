import asyncio
import time
import uuid
from concurrent.futures import ProcessPoolExecutor
from functools import partial

import uvicorn
from fastapi import File
from fastapi import FastAPI
from fastapi import UploadFile
from ekorpkit import eKonf

# import config
# import inference


app = FastAPI()


@app.get("/")
def read_root():
    return {"message": "Welcome to the ekorpkit API"}


@app.get("/version")
def read_version():
    return {"version": eKonf.__version__}


@app.get("/env")
def read_env():
    return eKonf.env().dict()

# @app.post("/disco/{model}")
# async def imagine(model: str, file: UploadFile = File(...)):
#     image = np.array(Image.open(file.file))
#     model = config.STYLES[style]
#     start = time.time()
#     output, resized = inference.inference(model, image)
#     name = f"/storage/{str(uuid.uuid4())}.jpg"
#     print(f"name: {name}")
#     # name = file.file.filename
#     cv2.imwrite(name, output)
#     models = config.STYLES.copy()
#     del models[style]
#     asyncio.create_task(generate_remaining_models(models, image, name))
#     return {"name": name, "time": time.time() - start}


# async def generate_remaining_models(models, image, name: str):
#     executor = ProcessPoolExecutor()
#     event_loop = asyncio.get_event_loop()
#     await event_loop.run_in_executor(
#         executor, partial(process_image, models, image, name)
#     )


# def process_image(models, image, name: str):
#     for model in models:
#         output, resized = inference.inference(models[model], image)
#         name = name.split(".")[0]
#         name = f"{name.split('_')[0]}_{models[model]}.jpg"
#         cv2.imwrite(name, output)


if __name__ == "__main__":
    uvicorn.run("main:app", host="0.0.0.0", port=8080)
