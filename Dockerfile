# Используем минимальный образ nginx
FROM nginx:alpine

# Удаляем стандартную страницу приветствия
RUN rm -rf /usr/share/nginx/html/*

# Копируем все файлы проекта (обратите внимание на переименование index (1).html)
COPY "index (1).html" /usr/share/nginx/html/index.html
COPY css /usr/share/nginx/html/css
COPY js /usr/share/nginx/html/js
COPY img /usr/share/nginx/html/img

# Открываем порт 80
EXPOSE 80
