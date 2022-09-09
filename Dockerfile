FROM nvcr.io/nvidia/pytorch:22.02-py3
# FROM nvcr.io/nvidia/pytorch:21.05-py3

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y fontconfig fonts-nanum
# for disco-diffusion
RUN DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get install -y tzdata imagemagick ffmpeg 
# for sshd
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y --fix-missing openssh-server \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade --no-cache-dir pip && \
    pip install --no-cache-dir jax[cuda11_cudnn82] -f https://storage.googleapis.com/jax-releases/jax_cuda_releases.html
# for ekorpkit
RUN pip install --no-cache-dir \
        "ekorpkit[all]" wandb transformers simpletransformers hydra-core hydra-colorlog \
        tensorflow jupyter_nbextensions_configurator ipywidgets RISE \
        imageio "pyspng==0.1.0" lpips timm "pytorch-lightning>=1.0.8" torch-fidelity \
        einops ftfy seaborn flax unidecode "opencv-python==4.5.5.64" \
        "rubrix[server]" loguru
        
RUN jupyter nbextension enable --py widgetsnbextension
RUN jupyter nbextensions_configurator enable

ARG workspace_dir
ARG project_name

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

RUN sh -c "$(wget -O- https://raw.githubusercontent.com/entelecheia/ekorpkit-book/main/scripts/zsh/zsh-install.sh)" -- \
    -t https://github.com/denysdovhan/spaceship-prompt \
    -p git \
    -p git-prompt \
    -p https://github.com/zsh-users/zsh-autosuggestions \
    -p https://github.com/zsh-users/zsh-completions

COPY ./scripts/zsh/.spaceshiprc.zsh /root/.spaceshiprc.zsh
# Set up conda environment 
RUN /opt/conda/bin/conda init zsh


# Set up jupyter notebook extensions
RUN pip install --no-cache-dir --upgrade \
    jupyterlab \
    jupyterlab_execute_time \
    jupyterlab-git \
    jupyterlab-vim \
    ipympl 
RUN conda install -c conda-forge nodejs
RUN jupyter labextension install \
    @jupyter-widgets/jupyterlab-manager \
    jupyterlab-slide-mode-keyboard-shortcuts \
    jupyter-matplotlib \
    jupyterlab-spreadsheet

# for rubrix
# RUN pip install --no-cache-dir rubrix[server] loguru
# for rubrix
ENV USERS_DB=/config/.users.yml
# See <https://github.com/tiangolo/uvicorn-gunicorn-fastapi-docker#module_name>
ENV MODULE_NAME="rubrix"
ENV VARIABLE_NAME="app"


# Set up ssh key
RUN mkdir -p /root/.ssh
COPY ./scripts/ssh/authorized_keys /root/.ssh/authorized_keys

RUN git config --global credential.helper store

CMD ["/bin/zsh"]
