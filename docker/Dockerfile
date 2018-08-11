FROM show0k/alpine-miniconda

COPY ./*.py collector/
COPY ./docker/requirements.txt collector/

RUN apk update
RUN apk upgrade

RUN pip install --upgrade pip
RUN pip install -r collector/requirements.txt
