# Используем официальный образ Node.js
FROM node:16-alpine

# Устанавливаем рабочую директорию внутри контейнера
WORKDIR /app

# Копируем package.json и package-lock.json в директорию
COPY package*.json ./

# Устанавливаем зависимости
RUN npm ci

# Копируем исходный код в директорию
COPY . .

ENV PORT=3000

EXPOSE $PORT

# Указываем команду для запуска приложения
CMD ["npm", "start"]
