#!/bin/bash
ANNEE=$1
TYPE=$2

echo "pour l'année $ANNEE" > sortie.txt
egrep "$TYPE" $ANNEE*.ann | wc -l >> sortie1.txt
