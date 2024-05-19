#!/bin/bash

# Перевірка наявності двох аргументів
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <directory1>"
    exit 1
fi

DIR1=$1

# Функція для отримання перших десяти найбільших папок (файлів) в заданій директорії
get_top_ten() {
    local dir=$1
    echo "Top 10 largest directories/files in $dir:"
    du -ab --max-depth=1 "$dir" | sort -nr | head -n 10
    echo ""
}

# Отримання та виведення даних для кожної директорії
get_top_ten "$DIR1"
