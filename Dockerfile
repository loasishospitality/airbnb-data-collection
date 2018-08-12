FROM show0k/alpine-miniconda

RUN pip install --upgrade pip

COPY ./docker/requirements.txt collector/
RUN pip install -r collector/requirements.txt

COPY ./*.py /home/jovyan/work/
COPY ./docker/configs/docker.config /home/jovyan/work/
