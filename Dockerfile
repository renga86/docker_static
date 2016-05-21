FROM ubuntu:14.04
MAINTAINER renga <renga86@docker.com>

RUN apt-get update
RUN apt-get install -y nginx
RUN echo 'Hi ther, I am in your container' \
    >/usr/share/nginx/html/index.html

CMD [ "nginx", "-g", "daemon off;" ]

EXPOSE 80
