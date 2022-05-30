FROM nvcr.io/nvidia/pytorch:21.05-py3
RUN apt-get update && apt-get install -y fontconfig fonts-nanum

ENV WORKSPACE_DIR /workspace
ENV WORK_DIR $WORKSPACE_DIR/projects/ekorpkit-config
ENV DS_BUILD_FUSED_ADAM 1

WORKDIR $WORK_DIR
RUN pip install --upgrade --no-cache-dir pip && \
    pip install --no-cache-dir \
        wandb transformers simpletransformers hydra-core hydra-colorlog tensorflow

CMD ["/bin/bash"]
