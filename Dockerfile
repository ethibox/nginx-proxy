FROM nginx:stable-alpine

RUN apk --no-cache add shadow
RUN adduser -u 1000 -D -S -G www-data www-data

ADD nginx.conf /etc/nginx/nginx.conf
ADD nginx.template /etc/nginx/nginx.template
ADD nginx-nextcloud.conf /etc/nginx/nginx-nextcloud.conf
ADD nginx-onlyoffice.conf /etc/nginx/nginx-onlyoffice.conf
ADD nginx-collabora.conf /etc/nginx/nginx-collabora.conf
ADD nginx-prestashop.conf /etc/nginx/nginx-prestashop.conf
