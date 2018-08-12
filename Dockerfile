FROM show0k/alpine-miniconda

COPY ./*.py collector/
COPY ./docker/configs/docker.config collector/
COPY ./docker/requirements.txt collector/

RUN pip install --upgrade pip
RUN pip install -r collector/requirements.txt
