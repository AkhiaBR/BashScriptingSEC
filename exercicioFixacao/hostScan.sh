#!/bin/bash

# SCANNER DE HOSTS ATIVOS

if [ "$1" == "" ] # se nao forem dados argumentos na execucao do script:
then 
    echo "HOST SCANNER"
    echo "ERRO: Você não inseriu nenhum argumento na execução do script."
    echo "Modo de uso: $0 [Informe a REDE]"
    echo "Exemplo: $0 192.168.0"
else
    echo "Hosts Encontrados: "
    for host in {1..254}; # cria um loop que vai de 100 a 120
    do
    ping -c 1 $1.$host | grep "64 bytes" | cut -d ":" -f 1 | cut -d " " -f 4; # devolve somente pings que retorram "64 bytes", ou seja, que deram resposta e depois corta as colunas para que apenas os IPs dos hosts sejam devolvidos
    done
fi