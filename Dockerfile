FROM python:3.10.6

LABEL maintainer="LeoLau0217@gmail.com"

ENV PYTHONUNBUFFERED 1

RUN mkdir -p /var/www/html/learning_log

WORKDIR /var/www/html/learning_log

ADD . /var/www/html/learning_log

RUN pip install -r requirements.txt

CMD python manage.py runserver 0:8080