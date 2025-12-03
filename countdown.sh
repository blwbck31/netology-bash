#!/bin/bash
# Скрипт для обратного отсчёта

if [ $# -ne 1 ]; then
    echo "Использование: $0 <число>"
    exit 1
fi

num=$1
while [ $num -ge 0 ]; do
    echo $num
    num=$((num - 1))
done
