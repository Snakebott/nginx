FROM nginx
LABEL maintainer="Snakebot"

ADD certbot /letsencrypt/certbot
RUN apt-get update && chmod +x /letsencrypt/certbot \
&& /letsencrypt/certbot --install-only -n \
&& apt-get install python-certbot-nginx -y
