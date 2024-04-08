FROM python:3.10.7-slim-bullseye

ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1

# sets up the working directory for any RUN, CMD, ENTRYPOINT, COPY and ADD instructions 
WORKDIR /app

# copies files and directories from current directory to WORKDIR
COPY . /app/

# install system dependencies
RUN apt-get update 

# install dependencies
RUN pip install --upgrade pip
COPY ./requirements.txt /app/
RUN pip install -r requirements.txt