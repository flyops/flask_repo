FROM python:3.6-alpine

MAINTAINER Software Creativity (SC) "#flask-web-app"

RUN adduser -D flask_repo

WORKDIR /home/flask_repo

COPY requirements.txt requirements.txt
RUN python -m venv venv
RUN venv/bin/pip install -r requirements.txt
RUN venv/bin/pip install gunicorn

COPY app app
COPY migrations migrations
COPY flask_repo.py boot.sh ./
RUN chmod +x boot.sh

ENV FLASK_APP flask_repo.py

RUN chown -R flask_repo:flask_repo ./
USER flask_repo

EXPOSE 5000
ENTRYPOINT [ "./boot.sh" ]
