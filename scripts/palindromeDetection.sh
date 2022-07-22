#!/bin/bash
echo "ingresaste en palindromeDetection"
echo "ingrese Palabra:"
read -r PALABRA
PALINDROMO=$(echo "$PALABRA" | rev)
if [ "$PALABRA" = "$PALINDROMO" ];then
    echo "es palindromo"
else
    echo "no es un palindromo "
fi

