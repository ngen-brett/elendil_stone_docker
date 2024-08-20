FROM python:3

RUN mkdir /app
COPY ./requirements.txt /app
COPY ./elendil_stone /app/
WORKDIR /app
RUN git clone https://github.com/ngen-brett/elendil_stone.git

