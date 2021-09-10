FROM node:16-alpine3.11

RUN apk --no-cache add nginx curl git 

RUN rm /etc/nginx/conf.d/default.conf

RUN mkdir -p /run/nginx

COPY .docker/nginx.conf /etc/nginx/nginx.conf

WORKDIR /var/www

EXPOSE 3000

CMD ["nginx", "-g", "daemon off;"]