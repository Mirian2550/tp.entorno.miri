#!/bin/bash
echo "ingresaste en blanLinesCounter"

CONT_LINEA=0
while IFS= read -r line
do
    if [ ${#line} -eq 0 ];then
        CONT_LINEA=$((CONT_LINEA+1))
    fi
done < demo.txt

echo "Cantidad de lineas en blanco: " $CONT_LINEA