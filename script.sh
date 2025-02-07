#!/bin/bash

longitud=12
usar_mayus=true
usar_minus=true
usar_numeros=true
usar_especiales=true

minusculas=( {a..z} )
mayusculas=( {A..Z} )
numeros=( {0..9} )
especiales=( "!" "@" "#" "$" "%" "&" "*" )

generar_contraseña() {
    caracteres=()
    [[ $usar_minus == true ]] && caracteres+=("${minusculas[@]}")
    [[ $usar_mayus == true ]] && caracteres+=("${mayusculas[@]}")
    [[ $usar_numeros == true ]] && caracteres+=("${numeros[@]}")
    [[ $usar_especiales == true ]] && caracteres+=("${especiales[@]}")

    passwd=""
    for (( i=0; i<longitud; i++ )); do
        passwd+=${caracteres[RANDOM % ${#caracteres[@]}]}
    done
    echo "🔐 Contraseña: $passwd"
}

configurar() {
    while true; do
        clear
        echo "Configuración:"
        echo "1) Longitud: $longitud"
        echo "2) Incluir mayúsculas: $usar_mayus"
        echo "3) Incluir minúsculas: $usar_minus"
        echo "4) Incluir números: $usar_numeros"
        echo "5) Incluir caracteres especiales: $usar_especiales"
        echo "6) Volver"

        read -p "Elige opción: " opcion
        case $opcion in
            1) read -p "Nueva longitud: " longitud ;;
            2) usar_mayus=$([[ $usar_mayus == true ]] && echo false || echo true) ;;
            3) usar_minus=$([[ $usar_minus == true ]] && echo false || echo true) ;;
            4) usar_numeros=$([[ $usar_numeros == true ]] && echo false || echo true) ;;
            5) usar_especiales=$([[ $usar_especiales == true ]] && echo false || echo true) ;;
            6) break ;;
        esac
    done
}

while true; do
    clear
    echo "1) Opciones"
    echo "2) Generar contraseña"
    echo "3) Salir"
    read -p "Selecciona: " opcion

    case $opcion in
        1) configurar ;;
        2) generar_contraseña; read -p "Presiona Enter..." ;;
        3) exit ;;
    esac
done
