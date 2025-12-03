#!/bin/bash
# Скрипт для управления файлами и директориями

dir="test_dir"

mkdir $dir
cd $dir
touch file1.txt file2.txt file3.txt
echo "Файлы созданы."
rm *.txt
echo "Файлы удалены."
cd ..
rmdir $dir
echo "Директория удалена."
