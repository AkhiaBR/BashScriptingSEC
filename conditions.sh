#!/bin/bash

echo "Qual a cor do semáforo?: "
read cor

if [ "$cor" == "verde" ] # precisa de espaço entre os "[]"
then # caso true:
    echo "Siga em frente"
elif [ "$cor" == "amarelo" ]
then
    echo "ESPERE!"
else
    echo "PARE!"
fi # encerra o if