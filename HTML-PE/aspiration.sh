cptTableau=0;
for fichier in $(ls $DOSSIER_URL); do
    cptTableau=$(($cptTableau + 1)) ;
    compteur=0 ;
    while read line; do
      compteur=$(($compteur + 1)) ;
      codeHTTP=$(curl -L -w '%{http_code}\n' -o ./aspirations/"$cptTableau-$compteur".html $line);
    done;
done ;
