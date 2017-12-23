FROM nginx

LABEL maintainer="Snakebot"

RUN apt-get update && apt-get install -y openssl letsencrypt apache2-utils
VOLUME [ "/data" ]
VOLUME [ "/etc/nginx" ]

