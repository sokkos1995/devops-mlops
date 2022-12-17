FROM continuumio/miniconda3:latest

LABEL maintainer="Konstantin Sokolov sokkos1995@gmail.com"

WORKDIR /app

COPY ./1.sh /app/1.sh
RUN chmod +x /app/1.sh

RUN apt-get update -y \
    && apt-get install -y build-essential

COPY ./requirements.txt requirements.txt

CMD ["/app/1.sh"]

