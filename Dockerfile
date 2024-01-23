# Dockerfile

FROM jupyter/all-spark-notebook:latest

# Install Python 3.6
RUN apt-get update && apt-get install -y python3.6

# Install additional libraries
COPY ./requirements.txt /
RUN pip install -r /requirements.txt
#RUN pip install -r /requirements.txt