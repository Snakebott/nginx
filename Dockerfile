FROM nginx

LABEL maintainer="Snakebot"

RUN apt-get install software-properties-common -y
RUN apt-add-repository ppa:certbot/certbot -y && apt-get update && apt-get install certbot -y
# RUN apt-get update && apt-get install -y openssl letsencrypt python-certbot-nginx apache2-utils
VOLUME [ "/data" ]
VOLUME [ "/etc/nginx" ]

