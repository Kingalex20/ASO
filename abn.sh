#!/bin/bash

   if [[ $# -ne 3 ]]; then
	echo "Error:Debes proporcionar tres parámetros:a,b y n."
	exit 1
   fi

    a=$1
    b=$2
    n=$3

   if [[ $n -le 0 ]]; then
	echo "Error: n debe ser mayor que 0"
	exit 1
   fi

   suma=0
   for (( i=1; i<=n; i+=2 )); do
	suma=$(( suma + a * b * i ))
   done

   echo "El resultado es: $suma"
