FROM alpine:latest

MAINTAINER khausar <khausarrestu27@gmail.com>

RUN apk add --update nginx && rm -rf /var/cache/apk/*
RUN mkdir -p /tmp/ngin/client-body
RUN mkdir -p /var/www

COPY nginx/nginx.conf /etc/nginx/nginx.conf
COPY nginx/default.conf /etc/nginx/conf.d/default.conf

COPY website /var/www

CMD ["nginx", "-g", "daemon off;"]
