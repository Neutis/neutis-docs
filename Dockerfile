FROM ubuntu:16.04

ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8

RUN apt-get update

RUN apt-get install -y \
    python3-pip

RUN pip3 install -U mkdocs

RUN mkdir /neutis-docs 
COPY . /neutis-docs
WORKDIR /neutis-docs

CMD ["mkdocs", "serve", "-a", "0.0.0.0:8000"]
