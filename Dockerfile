FROM python:3.8-slim-buster

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

ENV FLASK_APP=app.py

ENV FLASK_ENV=development

CMD ["flask", "run", "--host=0.0.0.0", "--port=31201"]