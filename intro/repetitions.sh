#!/bin/bash

for i in $(seq 100 120); # cria um loop que vai de 100 a 120 // o for também pode ler arquivos "$(cat arquivo.txt)"
do
    echo 172.16.1.$i; 
done