FROM nginx

LABEL maintainer="Snakebot"

RUN apt-get update && apt-get install -y openssl letsencrypt
VOLUME [ "/data" ]
VOLUME [ "/etc/nginx" ]

