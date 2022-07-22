#!/bin/bash
echo "ingresaste en substringReplace"
echo "ingrese cadena1 "
read -r CADENA1
echo "ingrese cadena2 "
read -r CADENA2
echo "reemplazamos:" "$CADENA1" " por: " "$CADENA2"
TEXTO=$(cat ./demo.txt)
echo "${TEXTO//$CADENA1/"$CADENA2"}" 

