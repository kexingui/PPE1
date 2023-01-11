#journal de bord du projet encadré
#traivail aujoud'aihui_GIT début :)

###Séance 1 

J'ai ai fait une connaissance avec shell.  J'apprenais des commands de shell. comme : 
cd
mkdir
pwd
ls
echo
grep
egrep 
cat
 
## Seance 2
des remaques d’exercices shell:
1. chaque fois quand on fait la modification sur notre ordinateur ou sur git, il faut qu'on synchroniser les deux.
   Lancez la commande "git log" pour voir votre dernier commit.
   (## au début de ligne signifie une sous section.)
2. git status utilisé pour vérifier si git a bien détect la modification.


## 28/09/2022

Pendant le cours on a fait la création du repository sur GitHub et des fichiers Readme.md et journal-de-bord.md
chaque fois quand on veut mettre les dossiers sur girt : 
git add (nom de dossier)
git commit -m
git push


## l'installation de lynx, curl et wget 

Dans le cours je connais le outil 
lynx
curl 
wget 

et on a fait l'installation dans le cours.


## problème de mon tableau chinois

Après avoir préparé les urls et exécuté le formulaire complet en utilisant le script donné par professeur. Le premier problème que j'ai rencontré est qu'après avoir exécuter le script, le tableau, les dossiers dumps, concordances, et le contextes sont bien produits, mais je ne pouvais pas l'ouvrir par les liens du tableau. Après avoir consulté professeur, j'ai compris que le problème était dû à un problème de chemin de fichier dans le script. En modifiant le chemin d'accès au fichier, j'ai pu ouvrir le lien vers les vidages dans le formulaire. 
 
Cependant, après avoir ouvert le lien, j'ai découvert le problème du mojibake : après que je ouvre le liens l'affichage des mos sont tous en mojibake. 

###problème règler
Avec l'aide de mon camarade,  je trouve que le problème d'affichage est à cause de mon navigateur safari. Je insatalle Google chrome et renouvre le page de tableux, les texts sont bien affichés. 

##25,novembre 

Aujourd'hui je reprends le traivl de git et mes devoirs. J'ai reglé le problème que la version de mon responsitory n'est plus la dernière version.
le cause est que un membre de mon groupe a push un document dans mon git mais je ne le savais pas.
J'ai reglé le problème par git clone et git pull. J'ai cloné la nouvelle version de git sur mon document local, et puis j'ai utilisé git git pull.
Ensuite je renouvelle mon journal et le README.
Maintnant mon git va bien.

#20 décembre

Une membre de notre groupe décide de quitter notre peojet, dans ca cas on décide d'ajouter l'anglais et l'espagnol dans notre traviller. Charlotte s'occupe de trouver les urls d'espagol et moi je prépare les 50 urls d'anglais. J'ai essayé à exercuter le tableau, la pluspart des urls marche, mais il y a certain urls qui ne marche pas, donc il y a beaucoup de chose à ranger. 



##décembre 22
Le but d'aujoud'hui

-compte l'occuence.
-cntext
-concordance
ajouter une fiche concordance.sh


dans le commande, nous pouvons utiliser -o signifie "un match par ligne"
{0,5} on prends 5 mots à gauche, et 5 mots à droit.

on débouche itrameur.

Pour le projet de goupe, je fais le aspiration de ma partie en chinois.


###5 janvier 2023
pour le projet  de notre group, les tableaux de espagnol, français et anglais fonctionne bien maintnant, et je prendre le charge de itrameur et nuage de mots de ces trois langues. 
Parce que le  tableau chinois il y a quand même le problème d'encodage dans l'affichage, donc je traite d'abord itrameur de ces tris langue. 
problème rencontré : Après que l'itrameur est produit, je trouve qu'il y a des mots outils qui n'a pas un lien avec le sens,  je consulte bien Internet et puis je comprends qu'il faut faire les 
«stop words» pourque on puis supprimer ces mots. 

# 6 janvier 
 Afin d'éliminer les mots vides, j'utilise le programme python nltk. j'installe le stop liste de nltk, cela fonnction pour anglais, beaucoup de mots vides sont éliminés. 
 Mais pour français et espagnol, nitk n'est pas très efficace, il reste beaucoup de mot désagréable. Dans ce cas je trouve les autres liste de stopwords sur Internet mais ils ne fonctionnent non plus. 
 Pour le corpus chinois, il faut d'abord faire la segmention et puis éliminer les mots vide. j'ai essayé le script thulac donné par prof, mais ce script il me donne un text un peu bizzar, les mots sont separé mais il y a des "/"ajouté entre les mots séparés.
 Pour réglerce problàme, je chercher sur Internet et je trouve jieba pour segmentation et enlevé les stopwords en chinois. 

# 8 janvier 

Problème de tableau. 
Quand je vérifiais le tableux sur notre page de site je trouve que en fait il y a des problème d’affichage dans le contexte d’espagnol et français: Le contenu du texte s'affiche sur la page, mais à l'extrême gauche de la page, il y a des caractère désagréable comme /dumps-text/cordances/. Donc le problème qu'on a rencontré dans itrameur c'est à cause du corpus total origine de context. 

Cela est à cause de egrep. 
En fait egrep n’est pas très efface  quand il cherche les mots avec espace, ici c’est le cas de « femme au foyer» et « ama de casa ». Cela est pour quoi notre script fonctionne pour trouver le mot anglais et chinois,  mais il y a le problème pour français et espagnol. 
 Pour règler ce problème, il faut qu’on déclarer le mot après grep: 
En français : 
NB_OCC=$(grep -E -o "[Ff]emmes? au foyer" ./dumps-text/$basename-$lineno.txt | wc -l)
grep -E -A2 -B2 "[Ff]emmes? au foyer" ./dumps-text/$basename-$lineno.txt > ./contextes/$basename-$lineno.txt
En espagnol : 
NB_OCC=$(grep -E -o "[Aa]mas? de casa" ./dumps-text/$basename-$lineno.txt | wc -l)
grep -E -A2 -B2 "[Aa]mas? de casa" ./dumps-text/$basename-$lineno.txt > ./contextes/$basename-$lineno.txt

Après ce changement, les contextes fonctionnent bien. 





