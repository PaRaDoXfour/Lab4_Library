#!/bin/bash
echo "--- Запуск комплексної перевірки коду ---"

echo "0. Компіляція проєкту..."
mvn compile

echo "1. Перевірка стилю (Checkstyle)..."
mvn checkstyle:check

echo "--- Перевірку завершено ---"