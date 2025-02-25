# Используем минимизированный образ Nginx с Alpine для уменьшения размера
FROM nginx:alpine

# Устанавливаем рабочую директорию
WORKDIR /usr/share/nginx/html

# Копируем статические файлы в директорию Nginx
COPY . .

# Устанавливаем нужные права доступа
RUN chmod -R 755 /usr/share/nginx/html

# Открываем порт 80 для HTTP
EXPOSE 80

# Используем стандартную команду запуска Nginx
CMD ["nginx", "-g", "daemon off;"]

