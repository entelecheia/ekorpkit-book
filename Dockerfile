FROM nvcr.io/nvidia/pytorch:22.02-py3
# FROM nvcr.io/nvidia/pytorch:21.05-py3
RUN apt-get update && apt-get install -y fontconfig fonts-nanum
# for disco-diffusion
RUN DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get install -y tzdata imagemagick ffmpeg

ENV WORKSPACE_DIR /workspace
ENV WORK_DIR $WORKSPACE_DIR/projects/ekorpkit-book
ENV DS_BUILD_FUSED_ADAM 1
# for disco-diffusion
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ENV KMP_DUPLICATE_LIB_OK TRUE

WORKDIR $WORK_DIR
RUN pip install --upgrade --no-cache-dir pip && \
    pip install --no-cache-dir \
        ekorpkit wandb transformers simpletransformers hydra-core hydra-colorlog tensorflow jupyter_nbextensions_configurator ipywidgets \
        imageio imageio-ffmpeg==0.4.4 pyspng==0.1.0 lpips timm pytorch-lightning>=1.0.8 torch-fidelity einops ftfy seaborn

RUN jupyter labextension enable @jupyter-widgets/jupyterlab-manager
RUN jupyter nbextension enable --py widgetsnbextension
RUN jupyter nbextensions_configurator enable

CMD ["/bin/bash"]
