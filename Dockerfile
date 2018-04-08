FROM nginx

LABEL maintainer="Snakebot"

RUN apt-get update && apt-get install software-properties-common -y && \
apt-add-repository ppa:certbot/certbot -y && apt-get update && apt-get install python-certbot-nginx -y

VOLUME [ "/data" ]
VOLUME [ "/etc/nginx" ]

