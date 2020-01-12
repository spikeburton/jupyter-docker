FROM continuumio/miniconda3
RUN /opt/conda/bin/conda install jupyter -y --quiet
CMD /opt/conda/bin/jupyter notebook --notebook-dir=/opt/notebooks --ip=0.0.0.0 --port=8888 --no-browser --allow-root
