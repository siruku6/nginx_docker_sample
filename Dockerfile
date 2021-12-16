FROM nginx:1.21-alpine

RUN adduser -u 1000 -D -S -G www-data www-data
