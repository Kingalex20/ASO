#!/bin/bash

while true;do

echo "Selecciona una opción"
echo "a)Calcular suma numeros 1 a 100"
echo "b)Mostrar tabla de multiplicar de un numero"
echo "c)Verificar si existe un archivo y tiene permisos de lectura y escritura"
echo "d)Salir"
read -p "Opción: " opcion

	case $opcion in
	a)
			suma=0
			for((i=1; i<=100; i++)); do
			suma=$((suma + i))
			done
			echo "La suma de los numeros del 1 al 100 es: $suma"
	b
		read -p  "Ingrese un numero:" num
		echo "Tabla de multiplicar del $num:"
		for ((i=1;i<=10; i++)); do
			echo "$num x $i = $((num * i))"
		done
		;;

	c)
		read -p "Ingrese nombre archivo: " archivo
		if [[ -e $archivo ]]; then
			echo "El archivo $archivo existe."
			if [[ -r $archivo && -w $archivo ]]; then
				echo "El archivo tiene permisos de lectura y/o escritura"
			else
				echo "No tiene permisos de lecura y/o escritura"
			fi
		else
			echo "El archivo $archivo no existe"
		fi
		;;

	d)

		echo "Saliendo del programa.Adios"
		break
		;;
	*)
		echo "Operación no valida"
		;;
    esac
    echo
done
