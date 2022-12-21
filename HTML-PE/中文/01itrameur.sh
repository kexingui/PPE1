#!/usr/bin/env bash

# ATTENTION
# Ce script est fait pour être lancé depuis la racine du projet.
# Cela lui permet de récupérer les fichiers dans les bons dossiers.
#
# Se lancera donc comme ça :
# $ ./programmes/correction_itrameur.sh

if [[ $# -ne 2 ]]
then
	echo "Deux arguments attendus : <dossier> <langue>"
	exit
fi

folder=$1 # les fichiers qui portent le basename, dumps-text OU contextes 
basename=$2 # correspond à la langue qu'on étudie

echo "<lang=\"XXXX"\">" # à remplir

for filepath in $(ls $folder/$basename-*.txt) # une boucle parce qu'il faut répéter
do 
	
	# filepath == dumps-texts/fr-1.txt
	# ==> pagename = fr-
	pagename=$(basename -s .txt $filepath) # s = retirer ce qui est à la fin du fichier
	
	echo "<page=\"$pagename"\">" >> "itrameur/$folder-$basename.txt" # les noms des dumps, genre fr-1, fr-2, sans extension
	echo "<text>" >> "itrameur/$folder-$basename.txt"

	# on récupère les dumps / contextes
	# et on écrit à l'intérieur de la balise text
	content=$(cat $filepath)
	# ordre important : & en premier
	# sinon : < => &lt; => &amp;lt;
	content=$(echo "$contenxt" | sed 's/&/&amp;/g') # s = faire une substitution / ce qu'on remplace / ce qu'on crée / g = globalement 
	content=$(echo "$contenxt" | sed 's/</&lt;/g')
	content=$(echo "$contenxt" | sed 's/>/&gt;/g')
	
	echo "$content" >> "itrameur/$folder-$basename.txt"
	
	echo "</text>" >> "itrameur/$folder-$basename.txt"
	echo "</page>§" >> "itrameur/$folder-$basename.txt"
done
	
echo "</lang>


