FROM nvcr.io/nvidia/pytorch:22.02-py3
# FROM nvcr.io/nvidia/pytorch:21.05-py3

ARG workspace_dir
ARG project_name

RUN apt-get update && apt-get install -y fontconfig fonts-nanum
# for disco-diffusion
RUN DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get install -y tzdata imagemagick ffmpeg

# Set up environment variables
ENV EKORPKIT_WORKSPACE_ROOT=${workspace_dir}
ENV EKORPKIT_PROJECT=${project_name}
ENV EKORPKIT_PROJECT_DIR=$EKORPKIT_WORKSPACE_ROOT/projects/$EKORPKIT_PROJECT
ENV KMP_DUPLICATE_LIB_OK TRUE
ENV PIP_DEFAULT_TIMEOUT 100
ENV DS_BUILD_FUSED_ADAM 1
# for disco-diffusion
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ENV KMP_DUPLICATE_LIB_OK TRUE

WORKDIR $EKORPKIT_PROJECT_DIR

RUN pip install --upgrade --no-cache-dir pip && \
    pip install --no-cache-dir jax[cuda11_cudnn82] -f https://storage.googleapis.com/jax-releases/jax_cuda_releases.html
RUN pip install --no-cache-dir \
        ekorpkit[all] wandb transformers simpletransformers hydra-core hydra-colorlog \
        tensorflow jupyter_nbextensions_configurator ipywidgets \
        imageio pyspng==0.1.0 lpips timm pytorch-lightning>=1.0.8 torch-fidelity \
        einops ftfy seaborn flax unidecode opencv-python==4.5.5.64

RUN jupyter labextension enable @jupyter-widgets/jupyterlab-manager
RUN jupyter nbextension enable --py widgetsnbextension
RUN jupyter nbextensions_configurator enable

CMD ["/bin/bash"]
