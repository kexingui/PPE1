#journal de bord du projet encadré
#traivail aujoud'aihui_GIT début :)






## Seance 2
des remaques d’exercices shell:
1. chaque fois quand on fait la modification sur notre ordinateur ou sur git, il faut qu'on synchroniser les deux.
   Lancez la commande "git log" pour voir votre dernier commit.
   (## au début de ligne signifie une sous section.)
2. git status utilisé pour vérifier si git a bien détect la modification.

# séance 3


##



## l'installation de lynx, curl et wget 

Dans le cours je connais le outil lynx, 

curl 
wget 

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