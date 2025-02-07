#!/bin/bash

encriptar_mensaje() {
    mensaje=$1
    desplazamiento=$2
    mensaje_encriptado=""

    for (( i=0; i<${#mensaje}; i++ )); do
        letra="${mensaje:$i:1}"
        if [[ "$letra" =~ [a-zA-Z] ]]; then
            if [[ "$letra" =~ [a-z] ]]; then
                letra_encriptada=$(echo "$letra" | awk -v desplazamiento=$desplazamiento \
                    '{printf "%c", ((int($0)-97+desplazamiento)%26+26)%26+97}')
            else
                letra_encriptada=$(echo "$letra" | awk -v desplazamiento=$desplazamiento \
                    '{printf "%c", ((int($0)-65+desplazamiento)%26+26)%26+65}')
            fi
            mensaje_encriptado="$mensaje_encriptado$letra_encriptada"
        else
            mensaje_encriptado="$mensaje_encriptado$letra"
        fi
    done
    echo "$mensaje_encriptado"
}

while true; do
    echo "Introduce el mensaje a encriptar:"
    read mensaje

    echo "Introduce el desplazamiento (número entero):"
    read desplazamiento

    mensaje_encriptado=$(encriptar_mensaje "$mensaje" "$desplazamiento")
    echo "Mensaje encriptado: $mensaje_encriptado"

    echo "¿Quieres encriptar otro mensaje? (sí/no)"
    read respuesta
    if [[ "$respuesta" != "sí" ]]; then
        break
    fi
done





