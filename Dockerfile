FROM nginx:alpine

RUN rm -rf /usr/share/nginx/html/*

COPY "index (1).html" /usr/share/nginx/html/index.html
COPY css /usr/share/nginx/html/css
COPY js /usr/share/nginx/html/js
COPY img /usr/share/nginx/html/img

EXPOSE 80
