#!/bin/bash
set -e

DOCKER_IMAGE=spikeburton/jupyter
docker build -t $DOCKER_IMAGE .
