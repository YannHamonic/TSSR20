##!/bin/bash

# Script : Relever la présence de voyelle, consonne et chiffre dans un paramètre
# Auteur : Y. Hamonic
# Date de création : 22/03/2023

# Entrée : $1 : une variable à analyser
# Sortie : la présence de consonne,voyelle, chiffre

#--------------------------
# Déclaration des messages
#--------------------------
stringE="Erreur : Cette commande demande au moins un argument en paramètre"
stringR=''

#--------------------------
# Déclaration des fonctions
#--------------------------

# Fonction de vérification de la présence d'une voyelle
function have_voyelle {
    if [[ $1 =~ [aeiouy]+ ]]; then {
        return
    } else {
        false
    }
    fi
}

# Fonction de vérification de la présence d'une consonne
function have_consonne {
      if [[ $1 =~ [abcdfghjklmnpqrstvwz]+ ]]; then {
        return
    } else {
        false
    }
    fi  
}

# Fonction de vérification de la présence d'un nombre
function have_nombre {
      if [[ $1 =~ [0-9]+ ]]; then {
        return
    } else {
        false
    }
    fi  
}
#--------------------------
# Traitement des informations
#--------------------------

if [ ${1:?$stringE} ] ; then {
    if have_voyelle $1 ; then {
        stringR=$stringR" Voyelle"
    }
    fi
    if have_consonne $1 ; then {
        stringR=$stringR" Consonne"
    }
    fi
    if have_nombre $1 ; then {
        stringR=$stringR" Nombre"
    }
    fi
    echo $stringR
}
fi
