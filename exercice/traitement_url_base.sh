#!/usr/bin/env bash

#===============================================================================
# Programme pas finis. Difficile de trouver les bonnes commandes à utiliser.
# Pas le réflexe d'utiliser les pipes.
#===============================================================================

fichier_urls=$1 # le fichier d'URL en entrée
fichier_tableau=$2 # le fichier HTML en sortie


# ici on doit vérifier que nos deux paramètres existent, sinon on ferme!


# modifier la ligne suivante pour créer effectivement du HTML
echo "Je dois devenir du code HTML à partir de la question 3" > $fichier_tableau

lineno=1;

while read -r line;
do
	echo "ligne $lineno: $line";
	lineno=$((lineno+1));
done < $fichier_urls

while read -r URL; do
	echo -e "\tURL : $URL";
	curl -iLs $URL | egrep "^HTTP/" | grep -Eo "[0-9]{3}"
	# curl -i $URL | grep "^HTTP/" | cut -d" " -f2
	# CHARSET : curl -iL $URL | egrep -o "charset(\w|-)+ | cut -d= -f2 | tail -n 1"
curl -i $URL > file.txt # get header info
grep -n "HTTP" file.txt # find HTTP
# use cut to 