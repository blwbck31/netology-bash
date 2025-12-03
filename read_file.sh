#!/bin/bash
# Скрипт для чтения файла

if [ $# -ne 1 ]; then
    echo "Использование: $0 <файл>"
    exit 1
fi

while IFS= read -r line; do
    echo "$line"
done < "$1"
