#!/bin/bash
echo "ingresaste en statsUsageWords"

declare -A DIC_PAL

while IFS= read -r line
do
line=$(echo $line | tr "." " ")
line=$(echo $line | tr "," " ")
line=$(echo $line | tr ";" " ")
line=$(echo $line | tr "¿" " ")
line=$(echo $line | tr "?" " ")
line=$(echo $line | tr " " "\n")
for p in $line
    do
        if [ ${#p} -ge 4 ];then
            if [[ -v DIC_PAL[$p] ]];then
                DIC_PAL[$p]=$((DIC_PAL[$p]+1))
            else
                DIC_PAL[$p]=1
            fi
        fi
    done
done < demo.txt

for key in "${!DIC_PAL[@]}"; 
do 
    echo "$key - ${DIC_PAL[$key]}" 
done | sort -rn -k3 | head -n 10