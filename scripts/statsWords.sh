#!/bin/bash
echo "ingresaste en statsWords"
PAL_CORTA=1000
PAL_LARGA=0
TOTAL_PAL=0
TOTAL_LETRAS=0

while IFS= read -r line
do
    line=$(echo $line | tr "." " ")
    line=$(echo $line | tr "," " ")
    PAL=$(echo $line | tr " " "\n")
    for p in $PAL
    do
        if [ ${#p} -lt $PAL_CORTA ];then
            PAL_CORTA=${#p}
        fi
        if [ ${#p} -gt $PAL_LARGA ];then
            PAL_LARGA=${#p}
        fi
        TOTAL_PAL=$((TOTAL_PAL+1))
        TOTAL_LETRAS=$((TOTAL_LETRAS+${#p}))
    done
done < demo.txt

echo "La palabra más corta tiene: " $PAL_CORTA
echo "La palabra más larga tiene: " $PAL_LARGA
echo "El promedio de longitud es: " $((TOTAL_LETRAS/TOTAL_PAL))