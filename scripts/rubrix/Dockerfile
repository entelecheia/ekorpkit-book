FROM tiangolo/uvicorn-gunicorn-fastapi:python3.7

ENV USERS_DB=/config/.users.yml

RUN pip install --upgrade --no-cache-dir pip && \
    pip install --no-cache-dir rubrix[server] loguru

# See <https://github.com/tiangolo/uvicorn-gunicorn-fastapi-docker#module_name>
ENV MODULE_NAME="rubrix"
ENV VARIABLE_NAME="app"

COPY ./start-rubrix.sh ./start-rubrix.sh

CMD /wait-for-it.sh $ELASTICSEARCH -- /start.sh
