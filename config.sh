#!/bin/sh

export HTTPS=${HTTPS:-0}
export SERVER_NAME=${SERVER_NAME:-app}
export NGINX_ROOT_PATH=${NGINX_ROOT_PATH:-/var/www/html}
export NGINX_TEMPLATE=${NGINX_TEMPLATE:-/etc/nginx/nginx.template}

envsubst '$HTTPS $SERVER_NAME $NGINX_ROOT_PATH' < "$NGINX_TEMPLATE" > /etc/nginx/nginx.conf

exit 0
