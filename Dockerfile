FROM amancevice/pandas:0.23.0-python3-alpine

WORKDIR /collector
COPY ./docker/requirements.txt .

RUN pip3 install --upgrade pip && \
    apk add --no-cache py3-psycopg2 py3-lxml && \
    apk add --no-cache --virtual .build-deps gcc g++ gfortran python3-dev && \
    pip3 install -r requirements.txt && \
    apk del .build-deps

COPY ./*.py ./
COPY ./docker/configs/docker.config .
