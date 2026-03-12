FROM nginx:stable-alpine

RUN apk --no-cache add shadow
RUN adduser -u 1000 -D -S -G www-data www-data

ADD config.sh /docker-entrypoint.d/config.sh
ADD nginx.template /etc/nginx/nginx.template
ADD taiga.template /etc/nginx/taiga.template
ADD matomo.template /etc/nginx/matomo.template
ADD nextcloud.template /etc/nginx/nextcloud.template
ADD prestashop.template /etc/nginx/prestashop.template

HEALTHCHECK --interval=30s --timeout=5s --start-period=30s --retries=3 CMD curl -f http://localhost || exit 1

WORKDIR /var/www/html
