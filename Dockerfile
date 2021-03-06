FROM ubuntu
MAINTAINER Ayush Mishra


RUN apt-get update
RUN apt -y install python3.7

RUN apt -y install python3-pip

ENV PYTHONUNBUFFERED 1

RUN pip3 install Django==3.0.6

RUN pip3 install django-allauth==0.41.0

RUN pip3 install django-crispy-forms==1.9.1

RUN pip3 install django-tinymce4-lite==1.8.0

RUN pip3 install Pillow

RUN mkdir /usr/src/d_blog
COPY . /usr/src/d_blog

WORKDIR /usr/src/d_blog

EXPOSE 8000

CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
