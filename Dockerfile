FROM nginx:stable-alpine

RUN apk --no-cache add shadow
RUN adduser -u 1000 -D -S -G www-data www-data

ADD nginx.conf /etc/nginx/nginx.conf
ADD nginx.template /etc/nginx/nginx.template
