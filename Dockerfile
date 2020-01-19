FROM continuumio/miniconda3
RUN useradd -c "Conda" -d /opt/conda -r conda && \
  chown -R conda: /opt/conda
USER conda
RUN /opt/conda/bin/conda install jupyter -y --quiet
CMD [ "/opt/conda/bin/jupyter", "notebook", "--notebook-dir=/opt/notebooks", "--ip=0.0.0.0", "--port=8888", "--no-browser" ]
