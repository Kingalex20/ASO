#!/bin/bash

array=() 

while true; do
    echo "1) Crear array"
    echo "2) Mostrar array"
    echo "3) Agregar elemento"
    echo "4) Eliminar elemento por índice"
    echo "5) Mostrar tamaño del array"
    echo "6) Salir"
    
    read -p "Elige una opción: " opcion

    if [ "$opcion" -eq 1 ]; then
        read -p "Introduce valores separados por espacio: " -a array

    elif [ "$opcion" -eq 2 ]; then
        echo "${array[@]}"

    elif [ "$opcion" -eq 3 ]; then
        read -p "Introduce un nuevo elemento: " elemento
        array+=("$elemento")

    elif [ "$opcion" -eq 4 ]; then
        read -p "Introduce el índice a eliminar: " index
        unset array[index]

    elif [ "$opcion" -eq 5 ]; then
        echo "Tamaño: ${#array[@]}"

    elif [ "$opcion" -eq 6 ]; then
        exit

    else
        echo "Opción no válida."
    fi

    echo ""
done
