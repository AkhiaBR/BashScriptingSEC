#!/bin/bash

echo "Você deseja se cadastrar?: "
echo "1 - Sim"
echo "2 - Não"
read op

case $op in # verifica a variável "op" nos seguintes casos:
"1")
    echo "Iniciando seu cadastro..."
;; # fecha o caso
"2")
    echo "Saindo do cadastro..."
;;
esac # fecha a condicao