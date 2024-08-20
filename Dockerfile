FROM python:3

RUN mkdir /app
COPY ./requirements.txt /app
WORKDIR /app
COPY ./elendil_stone .
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
