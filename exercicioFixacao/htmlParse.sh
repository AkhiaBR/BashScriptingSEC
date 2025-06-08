#!/bin/bash

# PARSING DE HTML

# Cores
VERMELHO='\e[31m'
VERDE='\e[32m'
AMARELO='\e[33m'
AZUL='\e[34m'
CIANO='\e[36m'
BRANCO='\e[37m'
MAGENTA='\e[35m'
PRETO='\e[30m'

# Cores Brilhantes
VERMELHO_BRILHANTE='\e[91m'
VERDE_BRILHANTE='\e[92m'
AMARELO_BRILHANTE='\e[93m'
AZUL_BRILHANTE='\e[94m'
CIANO_BRILHANTE='\e[96m'
BRANCO_BRILHANTE='\e[97m'

# Estilos
FUNDO_PRETO='\e[40m'
NEGRITO='\e[1m'
SUBLINHADO='\e[4m'

# Resetar para o padrão
RESET='\e[0m'

# =============================================================

mostrarAjuda () {
    echo -e "${AZUL_BRILHANTE}=====================================================${RESET}"
    echo -e "${AZUL_BRILHANTE}               SCRIPT HTML PARSE - AJUDA             ${RESET}" # o "-e" ativa a interpretação de cores
    echo -e "${AZUL_BRILHANTE}=====================================================${RESET}"
    echo -e "${FUNDO_PRETO}${NEGRITO}${VERMELHO}ERRO: Você não inseriu nenhum argumento na execução do script.${RESET}"
    echo -e "${NEGRITO}Modo de uso: $0 [Informe o DOMÍNIO do site]${RESET}"
    echo -e "${NEGRITO}Exemplo: $0 ${SUBLINHADO}site.com.br${RESET}"
}

mostrarSucesso () {
    echo -e "${NEGRITO}${VERDE_BRILHANTE}Página baixada com sucesso! Analisando links...${RESET}"

    echo -e "${AZUL_BRILHANTE}${NEGRITO}========================================================${RESET}"
    echo -e "${AZUL_BRILHANTE}${NEGRITO}                   LINKS ENCONTRADOS:                   ${RESET}"
    echo -e "${AZUL_BRILHANTE}${NEGRITO}========================================================${RESET}"

    cat "index.html" | grep "href=" | cut -d "/" -f 3 | grep "\."  | cut -d '"' -f 1 | grep -v "<l" | grep -v "><" | sort -u
    rm -f "index.html"
    echo -e "${NEGRITO}${AMARELO}Limpeza: Arquivo 'index.html' temporário removido.${RESET}"
}

mostrarErro () {
    echo -e "${FUNDO_PRETO}${NEGRITO}${VERMELHO}ERRO: Não foi possível baixar o conteúdo da URL: $1${RESET}"
    echo -e "${NEGRITO}Verifique se a URL está correta e se você tem acesso à internet.${RESET}"
    rm -f "index.html"
}

if [ "$1" == "" ]
then
    mostrarAjuda
else
    if ! wget -q -O index.html "$1" &> /dev/null; # Tenta baixar a "$1" para index.html (-O) de forma totalmente silenciosa (-q), descartando qualquer saída do wget no processo (/dev/null). Caso o download falhe:
    then
        mostrarErro
    else # caso o download seja um sucesso:
        mostrarSucesso
    fi
fi