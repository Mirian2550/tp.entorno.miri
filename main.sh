#!/bin/bash

OPCION=6

while [ $OPCION -ne 0 ]
do
    echo "Menú: "
    echo "1) statsWords"
    echo "2) statsUsageWords"
    echo "3) findNames"
    echo "4) statsSentences"
    echo "5) blankLinesCounter"
    echo "0) salir"
    echo "Ingrese una opción: "
    NUMERO="^-?[0-9]+([.][0-9]+)?$"
    while true
    do 
    read -r OPCION
    if [[ $OPCION =~ $NUMERO ]]; then
        if [[ "$OPCION" -ge 0 && "$OPCION" -le 5 ]];then
            break
        else
            echo "ERROR INGRESE UN NÚMERO ENTERO ENTRE O Y 5"
        fi
    else
        echo "ERROR INGRESE UN NÚMERO ENTERO ENTRE 0 Y 5"
    fi
    done

    case $OPCION in 
        1)
        bash ./scripts/statsWords.sh
        ;;
        2)
        bash ./scripts/statsUsageWords.sh
        ;;
        3)
        bash ./scripts/findNames.sh
        ;;
        4)
        bash ./scripts/statsSentences.sh
        ;;
        5)
        bash ./scripts/blankLinesCounter.sh
        ;;
    esac
done

echo "¡Muchas gracias utilizar esta aplicación!"
exit 0