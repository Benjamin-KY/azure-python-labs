FROM python:3.12.0a5-slim

COPY . /app/

WORKDIR /app/

RUN pip install -r requirements.txt

ENV FLASK_APP=startup.py

EXPOSE 5000

CMD ["flask", "run", "--host=0.0.0.0"]
