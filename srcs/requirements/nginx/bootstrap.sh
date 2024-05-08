#!/bin/sh

# INITIALIZATION ###############################

if [ ! -f "/build/.init" ] || [ "$(< "/build/.init")" != "1" ]
then

    sleep       1 && echo 1 > /build/.init

    openssl     req -newkey rsa:4096 -x509 -sha256 -days 365 -noenc             \
                    -subj   "/C=FR/L=Nice/O=42/OU=mconreau/CN=mconreau.42.fr"   \
                    -out    /etc/nginx/ssl/inception.crt                        \
                    -keyout /etc/nginx/ssl/inception.key                        \
                    > /dev/null

    usermod     -d /var/www/public www-data

    sed         -i "s|\${NGINX_URL_HOST}|${NGINX_URL_HOST}|g" /etc/nginx/nginx.conf
    sed         -i "s|\${NGINX_BASE}|${NGINX_BASE}|g" /etc/nginx/nginx.conf
    sed         -i "s|\${WDP_DOCKER_HOST}|${WDP_DOCKER_HOST}|g" /etc/nginx/nginx.conf
    sed         -i "s|\${WDP_DOCKER_PORT}|${WDP_DOCKER_PORT}|g" /etc/nginx/nginx.conf
    sed         -i "s|\${ADM_DOCKER_HOST}|${ADM_DOCKER_HOST}|g" /etc/nginx/nginx.conf
    sed         -i "s|\${ADM_DOCKER_PORT}|${ADM_DOCKER_PORT}|g" /etc/nginx/nginx.conf
    sed         -i "s|\${FBW_DOCKER_HOST}|${FBW_DOCKER_HOST}|g" /etc/nginx/nginx.conf
    sed         -i "s|\${FBW_DOCKER_PORT}|${FBW_DOCKER_PORT}|g" /etc/nginx/nginx.conf
    sed         -i "s|\${WEB_DOCKER_HOST}|${WEB_DOCKER_HOST}|g" /etc/nginx/nginx.conf
    sed         -i "s|\${WEB_DOCKER_PORT}|${WEB_DOCKER_PORT}|g" /etc/nginx/nginx.conf

fi

# BOOT #########################################

nginx -g "daemon off;"
