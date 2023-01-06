# traitement de l'année 2016, on créé on écrase le fichiers sortie.txt
echo "pour l'année 2016" > sortie.txt
egrep "Location" 2016*.ann | wc -l >> sortie.txt
echo "pour l'année 2017" >> sortie.txt
egrep "Location" 2017*.ann | wc -l >> sortie.txt
echo "pour l'année 2018" >> sortie.txt
egrep "Location" 2018*.ann | wc -l >> sortie.txt



























