#!/bin/bash
echo "🚀 Запуск у режимі розробки..."
mvn clean compile exec:java -Dexec.mainClass="org.example.Driver"