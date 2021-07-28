#################################################
### SCRIPT 1 : PROJET RSTUDIO TEST RENV + GIT ###
#################################################

# 0. Petites astuces git
#     - BOUTON DU MILIEU (MOLETTE) : coller dans la fenetre de commande git
#     - TABULATION : permet de finir une commande si un seul choix existe (voir "cd new" plus bas pour voir un exemple)
#     > mkdir new_rep   ## creait le repertoire new_rep dans le repertoire courant
#     > cd new_rep   ## se deplace dans le repertoire new_rep (s'il existe dans le repertoire courant)
#     > cd ..   ## se deplace dans le repertoire parent
#     > cd new 'TAB'  ## permet de finir la commande cd new_rep (si new_rep est le seul repertoire commencant par "new")

# 1. Creation du projet RStudio plus differents repertoires/fichiers (on considere cet exemple pour les commandes)
#     - data
#     - result
#     - scripts (dans lequel je place les fichiers suivants)
#        - 0_functions.R (fichier generique qui change d'un projet a l'autre)
#        - 1_test_repro.R (fichier courant, incremente durant l'apprentissage)
#        - Z_TEST.R (fichier brouillon present dans tous les projets)
#     - workspaces

# 2. Click droit sur le dossier "scripts" -> Git Bash Here
#     - ouvre la fenetre de commandes et se place directement dans le dossier en question
#     - si la commande lancee depuis le menu windows, lancer la commande suivante pour se placer dans le bon dossier :
#     > cd "C:/Users/opauly/Documents/OP/Travaux R/Test_Repro/scripts"

# 3. En cas de non configuration (nouvelle machine par exemple) :
#     > git config --global user.name "Olivier Pauly"   ## parametre le nom de l'utilisateur
#     > git config --global user.email "olivier.pauly@inrae.fr"   ## parametre l'email de l'utilisateur
#     > git config -l   ## commande permettant de verifier si le nom et l'email sont bien configures

# 4. Initialisation du projet git dans le repertoire courant :
#     > git init   ## creait le dossier cache ".git" dans le repertoire courant
#     > git status   ## permet de verifier l'etat des commits, entre autres les fichiers traques et non traques

# 5. Ajouter le fichier '1_test_repro.R' a la liste des fichiers traques
#     > git add 1_test_repro.R   ## ajoute le fichier 1_test_repro.R a la liste des fichiers traques
#     > git add 'TAB'   ## 'TAB' ne fonctionne pas car d'autres fichiers sont presents
#     > git add 1 'TAB'   ## 'TAB' fonctionne car un seul fichier commence par "1" dans le repertoire scripts (dans notre exemple)
#     > git status   ## permet de verifier l'ajout du fichier dans les fichiers traques

# 6. Creation d'un commit pour "prendre en photo" les changements realises sur les fichiers traques + message
#      > git commit --message "Premiere version du fichier 1_test_repro.R"

# 7. Realiser un nouveau commit apres des modifications dans le fichier
#•     > git diff   ## informe sur les changements entre le dernier commit et le(s) fichier(s) actuel(s)
#      > git add 1_test_repro.R   ## ajoute le fichier a mettre a jour dans le prochain commit
#      > git commit --message "Version 2 du fichier test"














