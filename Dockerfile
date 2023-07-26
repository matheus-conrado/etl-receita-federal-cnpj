FROM jupyter/pyspark-notebook

RUN mkdir /home/jovyan/work/data
RUN mkdir /home/jovyan/work/notebooks
RUN mkdir /home/jovyan/work/schemas

COPY data /home/jovyan/work/data
COPY notebooks /home/jovyan/work/notebooks
COPY schemas /home/jovyan/work/schemas