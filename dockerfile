From python:3

RUN mkdir -p /app
WORKDIR /app

COPY ./src/requirements.txt /app/src/requirements.txt
RUN pip install -r src/requirements.txt

COPY ./src/ /app/
ENV FLASK_APP=server.py

CMD flask run -h 0.0.0.0 -p 5000