# Jupyter Notebooks in Docker 🐳

A simple Docker image built from 🐍 `continuumio/miniconda3` 🐍 to run Jupyter Notebooks locally

## How To Run

Create a directory inside this repo and name it `notebooks`. Place your notebooks inside this directory. Or, change the value of the `NOTEBOOKS` variable in `run.sh` to point to the directory where you store your notebooks.

Run the `run.sh` script with `/bin/bash run.sh` or `./run.sh` which will build the image and run an instance container. Change the `DOCKER_IMAGE` variable in the script to whatever name you like. Alternatively, if you just want to build the image, run the `build.sh` script.
