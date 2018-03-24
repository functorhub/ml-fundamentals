FROM jupyter/tensorflow-notebook

USER root
RUN apt-get update
RUN apt install tzdata
RUN apt-get --yes install libpq-dev
USER $NB_USER

RUN conda upgrade --yes scikit-learn
RUN conda install --yes tensorboard=1.6.0

