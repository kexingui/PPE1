#!/bin/bash
if [ $# -ne 1 ]			#ne - not euqal
then
	echo "ce programe demande un argument"
		exit
fi

FICHIER_URLS=$1
OK=0
NOK=0

while read -r LINE;   #-p associer un message ; -s option pour saisir qqchs; -r do not allow backslashes to escape any characters
do
	echo "la ligne: $LINE"
	if [[ $LINE =~ ^https?:// ]] #do not put ""
	then
		echo "ressemble à une URL valide"
		OK=$(expr $OK + 1)
	else
		echo "ne ressemble pas à une URL valide"
		NOK=$(expr $NOK + 1)
	fi #do not forget to close le boucle!!!
done < $FICHIER_URLS    # < pour déterminer si in chaîne est avant ou après une autre dans l’ordre alphabétique, but here redirection du contenu d’un fichier dans stdin??
echo "$OK URLs et $NOK lignes douteuses"