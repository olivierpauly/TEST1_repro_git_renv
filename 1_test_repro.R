#################################################
### SCRIPT 1 : PROJET RSTUDIO TEST RENV + GIT ###
#################################################


# ==========================================
# Liste des sources pour realiser ce fichier
# ==========================================

# Tuto video sur la partie 'git' : https://www.youtube.com/watch?v=V6Zo68uQPqE
# Tuto video sur la partie 'renv' : https://www.youtube.com/watch?v=yjlEbIDevOs



# ==============================================
# Preparation des fichiers/repertoires et de GIT
# ==============================================

# 0. Petites astuces git
#     - BOUTON DU MILIEU (MOLETTE) : coller dans la fenetre de commande git
#     - TABULATION : permet de finir une commande si un seul choix existe (voir "cd new" plus bas pour voir un exemple)
#     > mkdir new_rep   ## creait le repertoire new_rep dans le repertoire courant
#     > cd new_rep      ## se deplace dans le repertoire new_rep (s'il existe dans le repertoire courant)
#     > cd ..           ## se deplace dans le repertoire parent
#     > cd new 'TAB'    ## permet de finir la commande cd new_rep (si new_rep est le seul repertoire commencant par "new")

# 1. Creation du projet RStudio + differents repertoires/fichiers (on considere cet exemple pour les commandes)
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
#        > cd "C:/Users/opauly/Documents/OP/Travaux R/Test_Repro/scripts"

# 3. En cas de non configuration (nouvelle machine par exemple) :
#     > git config --global user.name "Olivier Pauly"             ## parametre le nom de l'utilisateur
#     > git config --global user.email "olivier.pauly@inrae.fr"   ## parametre l'email de l'utilisateur
#     > git config -l   ## permet de verifier si le nom et l'email sont bien configures

# 4. Initialisation du projet git dans le repertoire courant :
#     > git init     ## creait le dossier cache ".git" dans le repertoire courant
#     > git status   ## permet de verifier l'etat des commits, entre autres les fichiers traques et non traques



# ====================================================
# Premiers elements de versionnage (basique, en local)
# ====================================================

# 5. Ajouter le fichier '1_test_repro.R' a la liste des fichiers traques
#     > git add 1_test_repro.R   ## ajoute le fichier 1_test_repro.R a la liste des fichiers traques
#     > git add 'TAB'            ## 'TAB' ne fonctionne pas car d'autres fichiers sont presents
#     > git add 1 'TAB'          ## 'TAB' fonctionne car un seul fichier commence par "1" dans le repertoire scripts (dans notre exemple)
#     > git status               ## permet de verifier l'ajout du fichier dans les fichiers traques

# 6. Creation d'un commit pour "prendre en photo" les changements realises sur les fichiers traques + message (entre guillemets!)
#      > git commit --message "Premiere version du fichier 1_test_repro.R"

# 7. Realiser un nouveau commit apres des modifications dans le fichier
#      > git diff   ## informe sur les changements entre le dernier commit et le(s) fichier(s) actuel(s)
#          -> presser "Entree" pour faire defiler la liste des modifications
#          -> presser "q" pour quitter la liste des modifications
#      > git add 1_test_repro.R   ## ajoute le fichier a mettre a jour dans le prochain commit
#      > git commit --message "Version 2 du fichier test"
#      > git log   ## permet de visualiser la liste des commits realises

# 8. Creer et exploiter les branches : lors d'une nouvelle fonctionnalite ou mise à jour, il est preferable de travailler
# dans une nouvelle branche (et pas dans la branche principale 'master') pour developper le nouveau contenu, creer des
# commits si necessaire dans la branche, puis merger le resultat final dans la branche 'master' une fois que l'on
# estime que la nouvelle fonctionalite fonctionne :
#      > git branch concept-branche     ## creation de la branche "concept-branche" (nom de la branche renseigne sans guillemets)
#      > git branch                     ## liste les branches actives et indique dans laquelle on est place
#      > git checkout concept-branche   ## permet de se deplacer dans la branche "concept-branche"
#      - Faire des modifications sur le fichier
#      > git add 1_test_repro.R   ## prepare le commit qui sera fait dans la branche "concept-branche"
#      > git commit -m "V3 Info sur les branches + quelques modifs"     ## creait le commit dans "concept_branche"
#      > git checkout master                                            ## retour dans "master" (le fichier redevient celui du dernier commit de "master")
#      > git diff master..concept-branche                               ## permet de voir les differences entre les deux branches (utile si des modifs/commits ont ete faites sur les deux)
#      > git merge concept-branche -m "merge branch 'concept-branche'"  ## creait un commit dans master en prenant en compte les elements du dernier commit de la branche "concept-branche" (+ supprime "concept-branche)
#      > git branch -d concept-branche                                  ## supprime la branche (son label) mais conserve les commits qui s'y trouvaient

# REMARQUE 1 : Si des commits ont ete crees dans la nouvelle branche sans qu'aucun commit ne soit cree dans master en parallele, on dit que
# la branche ne diverge pas de master, il s'agit simplement d'un prolongement. Appliquer "merge" ne creara pas un nouveau commit (GIT renseignera
# la mention "Fast Forward"), mais rassemblera les branches en une seule portant les deux noms (a confirmer).
# Il faudra faire un commit a la main (add/commit), et il sera ensuite possible de supprimer la branche.

# REMARQUE 2 : En cas de conflit entre  deux commits de deux branches diff a merger (modif faites sur la meme ligne dans les deux commits)
# GIT previent l'utilisateur qu'un conflit existe, ce conflit apparaissant dans le fichier. C'est a l'utilisateur de faire le bon choix pour
# resoudre le conflit, puis de faire un add/commit manuel pour sauvegarder la gestion du conflit. Voir a 25min20 de la video GIT pour plus d'info.



# =====================
# Utilisation de GitHub
# =====================


# 1. Creer un projet dans GitHub
# Pour creer un projet, on se rend simplement sur son GitHub, et on clique sur 'New'
#      - Nom du projet : TEST1_repro_git_renv
#      - Statut du projet : Public (prive etait payant, gratuit maintenant?)
#      - On valide (voir plus tard les options readme/gitignore/licence)

# 2. Faire le lien entre le projet local et le projet GitHub
# Une fois le projet cree dans GitHub, une commande est generee pour permettre de faire le lien entre les projets local/GitHub :
#      > git remote add origin https://github.com/olivierpauly/TEST1_repro_git_renv.git   ## associe le projet local au projet GitHub
#      > git remote -v            ## indique le projet GitHub associe

# 3. Interagir entre le projet local et le projet GitHub
#      > git push origin master   ## "pousse" la branche 'master' dans le projet GitHub associe (mise en ligne)
#      > git pull origin master   ## "tire" la branche 'master' depuis le projet GitHub associe (recuperation)









