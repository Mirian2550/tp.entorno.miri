#!/bin/bash
echo "ingresaste en findNames"

NOMBRE="^[A-Z]+[a-z]+[a-z]*"
while IFS= read -r LINEA
do
    LINEA=$(echo "$LINEA" | tr "." " ")
    LINEA=$(echo "$LINEA" | tr "," " ")
    LINEA=$(echo "$LINEA" | tr "" " ")
    LINEA=$(echo "$LINEA" | tr "?" " ")
    PALABRAS=$(echo "$LINEA" | tr " " "\n")
    for PALABRA in $PALABRAS
    do
        if [[ $PALABRA =~ $NOMBRE ]]; then
            echo "Nombre: " "$PALABRA"
        fi
    done
done < demo.txt