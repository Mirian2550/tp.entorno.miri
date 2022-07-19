#!/bin/bash
echo "ingresaste en statsSentences"

ORACION_CORTA=1000
ORACION_LARGA=0
TOTAL_ORACIONES=0
TOTAL_LETRAS_ORACION=0

readarray -d . -t PALABRAS <<<"$(cat demo.txt)"

for((n=0;n<${#PALABRAS[*]};n++))
do
    if [ ${#PALABRAS[n]} -lt $ORACION_CORTA ];then
            ORACION_CORTA=${#PALABRAS[n]}
        fi
        if [ ${#PALABRAS[n]} -gt $ORACION_LARGA ];then
            ORACION_LARGA=${#PALABRAS[n]}
        fi
        TOTAL_ORACIONES=$((TOTAL_ORACIONES+1))
        TOTAL_LETRAS_ORACION=$((TOTAL_LETRAS_ORACION+${#PALABRAS[n]}))
done

echo "La oración más corta tiene: " $ORACION_CORTA
echo "La oración más larga tiene: " $ORACION_LARGA
echo "El promedio de longitud es: " $((TOTAL_LETRAS_ORACION/TOTAL_ORACIONES))