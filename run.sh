#!/bin/bash
set -e

# Original command this image/script is built from 👇
# docker run -t --rm -p 8888:8888 -v $(PWD)/notebooks:/opt/notebooks continuumio/miniconda3 /bin/bash -c "/opt/conda/bin/conda install jupyter -y --quiet && /opt/conda/bin/jupyter notebook --notebook-dir=/opt/notebooks --ip=0.0.0.0 --port=8888 --no-browser --allow-root"

DOCKER_IMAGE=spikeburton/jupyter
NOTEBOOKS=$(PWD)/notebooks
if ! docker images | grep -q $DOCKER_IMAGE; then
  docker build -t $DOCKER_IMAGE .
fi
docker run -t --rm --name jupyter --hostname jupyter -p 8888:8888 -v $NOTEBOOKS:/opt/notebooks $DOCKER_IMAGE
