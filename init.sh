##!/bin/bash

# Script : Créer un répertoire et 2 fichiers README.md et change.log dans ce répertoire
# Auteur : Y. Hamonic
# Date de création : 21/03/2023

# Entrée : $1 : répertoire à créer
# Sortie : Affiche le répertoire et son contenu

#--------------------------
# Déclaration des messages
#--------------------------
stringE="Erreur : Cette commande demande un nom de réperoire comme argument"


#--------------------------
# Traitement des informations
#--------------------------
if [ ${1:?$stringE} ] ; then {
    if mkdir $1 ; then {
        echo "Le dossier <$1> a été créé"
        touch ./$1/README.md
        touch ./$1/change.log
        ls ./$1 -lsa
    }
    fi
}
fi
