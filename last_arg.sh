##!/bin/bash

# Script : Afficher le dernier argument
# Auteur : Y. Hamonic
# Date de création : 21/03/2023

# Entrée : plusieurs arguments
# Sortie : Affiche le dernier argument

#--------------------------
# Déclaration des messages
#--------------------------
stringE="Erreur : Cette commande demande au moins un argument en paramètre"

#--------------------------
# Traitement des informations
#--------------------------
if [ ${1:?$stringE} ] ; then {
    varmax=$#
    echo "Le dernier argument est : ${!varmax}"
}
fi
