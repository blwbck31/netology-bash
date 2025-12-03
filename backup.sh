#!/bin/bash
# Скрипт для резервного копирования с датой

if [ $# -ne 2 ]; then
    echo "Использование: $0 <исходная_директория> <директория_бэкапа>"
    exit 1
fi

source_dir=$1
backup_dir=$2
date=$(date +%Y-%m-%d)

mkdir -p "$backup_dir"

for file in "$source_dir"/*; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        cp "$file" "$backup_dir/${filename}_$date"
    fi
done

echo "Бэкап завершён."
