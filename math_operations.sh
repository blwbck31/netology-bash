#!/bin/bash
# Скрипт с функциями для математических операций

add() {
    echo $(($1 + $2))
}

subtract() {
    echo $(($1 - $2))
}

multiply() {
    echo $(($1 * $2))
}

divide() {
    if [ $2 -eq 0 ]; then
        echo "Деление на ноль!"
        exit 1
    fi
    echo $(($1 / $2))
}

if [ $# -ne 3 ]; then
    echo "Использование: $0 <операция> <число1> <число2>"
    echo "Операции: add, subtract, multiply, divide"
    exit 1
fi

operation=$1
num1=$2
num2=$3

case $operation in
    add) add $num1 $num2 ;;
    subtract) subtract $num1 $num2 ;;
    multiply) multiply $num1 $num2 ;;
    divide) divide $num1 $num2 ;;
    *) echo "Неверная операция" ;;
esac
