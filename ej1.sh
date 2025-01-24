#!/bin/bash
echo "Selecciona una opción"
echo "a.SUMA"
echo "b.Resta"
echo "c.Multiplicación"
echo "D.División"
echo "e.Potencia"
echo "f.módulo"
read -p  "Opcion: " opcion

read -p  "Ingresa primer numero:" num1
read -p  "Ingrese el segundo numero:" num2

case $opcion in
	a) echo "Resultado:$((num1+num2))";;
	b)echo "Resultado:$((num1 - num2))";;
	c)echo "Resultado:$((num1*num2))" ;;
	d)
		if [[ $num2 -eq 0 ]]; then
			echo "No se puede dividir por 0"
		else
			echo "Resultado:$((num1/num2))"
		fi
		;;
	e)echo "Resultado:$((num1**num2))";;
	f)
	if [[$num2 -eq 0]]; then
	echo "No se puede calcular el modulo con divisor 0"
	else
	echo "Resultado: $((num1 % num2))"
	fi
	;;
	*)echo "Opción no válida";;
esac
