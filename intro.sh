#!/bin/bash

echo "Hello, World!" # printa a mensagem no terminal
echo "- Sistema ligado por: "$(uptime -p) # o $ indica que o que está dentro dos parênteses deve ser executado e o resultado dessa execução será inserido na string que está sendo passada para o comando echo
echo "- Diretório atual: " $(pwd)
echo "- O user atual: " $(whoami)

ip=192.168.0.1 # cria uma variável chamada ip
echo "- O Host é: " $ip # chama a variável criada

echo "- Digite um novo Host: "
read ip # espera a entrada de um valor, lê e armazena na variável ip
echo "- O novo Host é: " $ip

porta=80
echo "- O IP: $ip tem a porta $porta aberta" # insere as variáveis no print

echo "- Digite o endereço do site: "
read ipSite
echo "- Efetuando PING no endereço: $ipSite..."
ping -c1 $ipSite # executa o comando no terminal