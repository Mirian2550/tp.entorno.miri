#!/bin/bash
echo "ingresaste en findNames"

NOMBRE="^[A-Z]+[a-z]+[a-z]*"
while IFS= read -r line
do
    line=$(echo $line | tr "." " ")
    line=$(echo $line | tr "," " ")
    line=$(echo $line | tr "" " ")
    line=$(echo $line | tr "?" " ")
    PAL=$(echo $line | tr " " "\n")
    for p in $PAL
    do
        if [[ $p =~ $NOMBRE ]]; then
            echo "Nombre: $p"
        fi
    done
done < demo.txt