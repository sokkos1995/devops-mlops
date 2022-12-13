FROM continuumio/miniconda3:latest

LABEL maintainer="Konstantin Sokolov sokkos1995@gmail.com"

RUN mkdir /app

COPY ./1.sh /1.sh

COPY ./requirements.txt requirements.txt
RUN pip install -r requirements.txt

CMD ["/1.sh"]

