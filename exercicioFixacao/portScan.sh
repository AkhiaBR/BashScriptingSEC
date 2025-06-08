#!/bin/bash

# SCANNER DE PORTAS

if [ "$2" == "" ] # se nao forem dados argumentos na execucao do script:
then 
    echo "PORTSCAN"
    echo "ERRO: Você não inseriu os argumentos de forma correta na execução do script."
    echo "Modo de uso: $0 [Informe a REDE] [Informe a PORTA]"
    echo "Exemplo: $0 192.168.0 80"
else
    echo "Hosts com a porta $2 encontrados: "
    for host in {1..254}; # cria um loop que vai de 100 a 120
    do
        hping3 -S -p $2 -c 1 $1.$host 2> /dev/null | grep "flags=SA" | cut -d " " -f 2; # "2>" são mensagens de erros e estão sendo direcionadas ao void do linux "/dev/null" // só retorna respostas com SYN ACK "SA"
    done
fi