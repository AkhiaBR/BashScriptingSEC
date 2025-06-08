#!/bin/bash

# O que é um argumento?:
# Um argumento é um valor que você passa para um script quando o executa. 
# Exemplo: bash argument.sh primeiro_valor segundo_valor

echo "Nome do script: $0" # o primeiro argumento sempre será o nome do arquivo .sh
echo "Primeiro argumento: $1"
echo "Segundo argumento: $2"