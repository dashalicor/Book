# Используем минимальный образ nginx
FROM nginx:alpine

# Удаляем стандартную страницу приветствия
RUN rm -rf /usr/share/nginx/html/*

# Копируем все файлы из текущей директории в корень веб-сервера
COPY . /usr/share/nginx/html/

# Переименовываем главный HTML-файл в index.html (nginx ожидает именно его)
RUN mv "/usr/share/nginx/html/index (1).html" /usr/share/nginx/html/index.html

# Открываем порт 80
EXPOSE 80

# Запускаем nginx в foreground
CMD ["nginx", "-g", "daemon off;"]
