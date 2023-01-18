#!/bin/bash

echo `clear` 

function caso1() {
    echo "Tu nombre actual es: `whoami`"
    read -p "Introduce el nuevo nombre: " nombre
    echo "Tu nuevo Nombre es: $nombre"
}


function caso2() {
    for file in $HOME/*
    do 
        if [ -d $file ]
        then
            echo "Es un directorio" $file

        else
            echo "Es un archivo" $file
        fi
    done
}

function caso3() {
    fecha=`date`
    echo "La fecha actual es: " $fecha
    read -p "Escribe la nueva fecha: " nueva
    echo "La nueva fecha es: " $nueva
 
}

function caso4() {
    read -p "Valor 1: " x
    read -p "Valor 2: " y
    echo La suma es: $(( x + y )) 
}

function caso5() {
    echo "Lunes"
    echo "Martes"
    echo "Miercoles"
    echo "Jueves"
    echo "Viernes"
    echo "Sabado"
    echo "Domingo"
}

seleccion=0

while (( $seleccion != 6 ))
do
echo "-Pulsa 1 para cambiar el nombre de usuario "
echo "-Pulsa 2 para imprimir el directorio home" 
echo "-Pulsa 3 para cambiar la fecha"
echo "-Pulsa 4 para sumar dos valores"
echo "-Pulsa 5 para imprimir los dias de la semana: "
echo "-Pulsa 6 para salir"
read seleccion
case $seleccion in
    1)
    caso1
    ;;
    2)
    caso2
    ;;
    3)
    caso3
    ;;
    4)
    caso4
    ;;
    5)
    caso5
    ;;
    6)
    seleccion=6

esac
done


