#!/bin/bash
echo "ingresaste en statsWords"
PAL_CORTA=1000
PAL_LARGA=0
TOTAL_PAL=0
TOTAL_LETRAS=0

while IFS= read -r LINEAS
do
    LINEAS=$(echo "$LINEAS" | tr "." " ")
    LINEAS=$(echo "$LINEAS" | tr "," " ")
    PALABRAS=$(echo "$LINEAS" | tr " " "\n")
    for PALABRA in $PALABRAS
    do
        if [ ${#PALABRA} -lt $PAL_CORTA ];then
            PAL_CORTA=${#PALABRA}
        fi
        if [ ${#PALABRA} -gt $PAL_LARGA ];then
            PAL_LARGA=${#PALABRA}
        fi
        TOTAL_PAL=$((TOTAL_PAL+1))
        TOTAL_LETRAS=$((TOTAL_LETRAS+${#PALABRA}))
    done
done < demo.txt

echo "La palabra más corta tiene: " "$PAL_CORTA"
echo "La palabra más larga tiene: " "$PAL_LARGA"
echo "El promedio de longitud es: " $((TOTAL_LETRAS/TOTAL_PAL))