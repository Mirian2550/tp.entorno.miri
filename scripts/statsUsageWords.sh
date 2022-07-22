#!/bin/bash
echo "ingresaste en statsUsageWords"

declare -A DIC_PAL

while IFS= read -r LINEAS
do
LINEAS=$(echo "$LINEAS" | tr "." " ")
LINEAS=$(echo "$LINEAS" | tr "," " ")
LINEAS=$(echo "$LINEAS" | tr ";" " ")
LINEAS=$(echo "$LINEAS" | tr "¿" " ")
LINEAS=$(echo "$LINEAS" | tr "?" " ")
LINEAS=$(echo "$LINEAS" | tr " " "\n")
for PALABRA in $LINEAS
    do
        if [ ${#PALABRA} -ge 4 ];then
            if [[ -v DIC_PAL[$PALABRA] ]];then
                DIC_PAL[$PALABRA]=$((DIC_PAL[$PALABRA]+1))
            else
                DIC_PAL[$PALABRA]=1
            fi
        fi
    done
done < demo.txt

for key in "${!DIC_PAL[@]}"; 
do 
    echo "$key - ${DIC_PAL[$key]}" 
done | sort -rn -k3 | head -n 10