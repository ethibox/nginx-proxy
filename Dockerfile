FROM nginx:stable-alpine

RUN adduser -u 1000 -D -S -G www-data www-data

ADD nginx.conf /etc/nginx/nginx.conf
