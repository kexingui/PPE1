# les paramètres.
# La forme est indicative, sentez-vous libres d'en changer !
# Notamment pour quelque chose de plus léger, il n'y a pas de norme en bash.
#===============================================================================
fichier_urls=$1 # le fichier d'URL en entrée
fichier_tableau=$2 # le fichier HTML en sortie
if [[ $# -ne 2 ]]
then
	echo "Ce programme demande exactement deux arguments."
	exit
fi
mot="[Rr]obots?" # à modifier
echo $fichier_urls;
basename=$(basename -s .txt $fichier_urls)
echo "<html><body>" > $fichier_tableau
echo "<h2>Tableau $basename :</h2>" >> $fichier_tableau
echo "<br/>" >> $fichier_tableau
echo "<table>" >> $fichier_tableau
echo "<tr><th>ligne</th><th>code</th><th>URL</th><th>encodage</th><th>dump html</th><th>dump text</th><th>occurrences</th><th>contextes</th></tr>" >> $fichier_tableau
echo "<tr><th>ligne</th><th>code</th><th>URL</th><th>encodage</th><th>dump html</th><th>dump text</th><th>occurrences</th><th>contextes</th><th>concordances</th></tr>" >> $fichier_tableau

lineno=1;
while read -r URL; do

  grep -E -A2 -B2 $mot ./dumps-text/fich-$lineno.txt > ./contextes/fich-$lineno.txt

	echo "<tr><td>$lineno</td><td>$code</td><td><a href=\"$URL\">$URL</a></td><td>$charset</td><td><a href="../aspirations/fich-$lineno.html">html</a></td><td><a href="../dumps-text/fich-$lineno.txt">text</a></td><td>$NB_OCC</td><td><a href="../contextes/fich-$lineno.txt">contextes</a></td></tr>" >> $fichier_tableau
  # construction des concordance avec une commande externe

  bash programmes/concordance.sh ./dumps-text/fich-$lineno.txt $mot > ./concordances/fich-$lineno.html

	echo "<tr><td>$lineno</td><td>$code</td><td><a href=\"$URL\">$URL</a></td><td>$charset</td><td><a href="../aspirations/fich-$lineno.html">html</a></td><td><a href="../dumps-text/fich-$lineno.txt">text</a></td><td>$NB_OCC</td><td><a href="../contextes/fich-$lineno.txt">contextes</a></td><td><a href="../concordances/fich-$lineno.html">concordance</a></td></tr>" >> $fichier_tableau
	echo -e "\t--------------------------------"
	lineno=$((lineno+1));
done < $fichier_urls
