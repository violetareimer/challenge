# Dockerfile

FROM jupyter/all-spark-notebook:latest

# Install additional libraries
RUN pip install -r requirements.txt