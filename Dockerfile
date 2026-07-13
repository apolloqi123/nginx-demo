FROM docker pull docker.1ms.run/nginx:alpine
COPY ./public /usr/share/nginx/html
