#!/bin/bash

numero_aleatorio=$(( RANDOM % 50 + 1 ))

echo "Bienvenido al juego de adivinar el numero"
echo "He generado un numero entre 1 y 50, intenta adivinarlo"


	while true; do
	read -p "Introduce tu número: " numero_usuario


	if ((numero_usuario == numero_aleatorio )); then
		echo "Felicidades!Has acertado"
		break
	fi


	if ((numero_usuario < numero_aleatorio )); then
		echo "El numero es mayor"
	else
		echo "El número e menor"
	fi
	done
