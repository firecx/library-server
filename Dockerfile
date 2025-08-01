# Используем официальный образ OpenJDK
FROM openjdk:21-jdk-slim

# Создаем рабочую директорию
WORKDIR /app

# Копируем JAR файл в контейнер
COPY target/*.jar app.jar

# Открываем порт, на котором работает приложение
EXPOSE 8080

# Команда для запуска приложения
ENTRYPOINT ["java", "-jar", "app.jar"]