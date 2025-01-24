#!/bin/bash

read -p "Introduce una cadena de texto: " cadena

read -p "Introduce una letra para buscar: " letra


echo "Numero de carácteres: ${#cadena}"

echo "Numero total de palabras: $(echo $cadena | wc -w)"

echo "La letra '$letra' aparece $(echo $cadena | tr -cd "$letra" | wc -c) veces"
