FROM python:3

RUN mkdir /app
COPY ./requirements.txt /app
WORKDIR /app
COPY ./elendil_stone .
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
EXPOSE 8080
CMD ["gunicorn", "-b", "0.0.0.0:8080", "app:app"]
