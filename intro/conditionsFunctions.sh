#!/bin/bash

echo "Qual a sua idade?: "
read idade

if [ "$idade" -ge 18 ] # "-ge": (greater or equal)
then
    echo "Você pode dirigir!"
else
    echo "Você NÃO pode dirigir!"
fi