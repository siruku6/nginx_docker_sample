FROM nginx:1.21-alpine

RUN adduser -u 1000 -D -S -G www-data www-data


ENV APP_ROOT /var/www
RUN rm /etc/nginx/conf.d/default.conf \
    && mkdir -p /var/www/log
COPY ./default.conf /tmp/default_template.conf
RUN envsubst '$APP_ROOT' < /tmp/default_template.conf > /etc/nginx/conf.d/default.conf
