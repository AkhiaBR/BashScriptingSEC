#!/bin/bash

if [ "$1" == "" ] # se nao forem dados argumentos na execucao do script:
then 
    echo "PORT SCANNER"
    echo "ERRO: Você não inseriu nenhum argumento na execução do script."
    echo "Modo de uso: $0 [Informe o IP] [Informe a porta]"
else
    echo "Escaneando a porta $2 no IP $1"
fi