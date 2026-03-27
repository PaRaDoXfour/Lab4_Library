#!/bin/bash
APP_NAME="Lab4_Library"
JAR_PATH="target/Lab4_Library-1.0-SNAPSHOT.jar"

echo "📦 Збирання артефакту..."
mvn clean package -DskipTests

if [ -f "$JAR_PATH" ]; then
    echo "📂 Створення резервної копії даних..."
    cp input.txt input.txt.bak 2>/dev/null || echo "Перший запуск, файл даних ще не створено."

    echo "✅ Запуск додатку..."
    java -jar $JAR_PATH
else
    echo "❌ Помилка: JAR файл не знайдено. Перевірте помилки компіляції."
    exit 1
fi