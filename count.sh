##!/bin/bash

# Script : compte de 1 à $1
# Auteur : Y. Hamonic
# Date de création : 20/03/2023

# Entrée : $1:Nombre fin du compte
# Sortie : Liste de 1 jusqu'au nombre fin de compte

#--------------------------
# In user, don't trust
#--------------------------
stringE1="Erreur : Cette commande demande un entier naturel positif comme argument"
stringE2="Erreur : Cette commande demande n'accepte qu'un seul argument"
# Fonction de vérification qu'une variable est un entier positif
function is_uint {
    if [[ $1 =~ ^[1-9][0-9]+? ]]; then {
        return
    } else {
        echo $stringE
        false
    }
    fi
}

#--------------------------
# Exécution de la commande
#--------------------------
if [ $# -le 1 ] ; then {
    if  [ ${1:?$stringE1} ] ; then {
        if $(is_uint $1) && [ $1 -ne 0 ] ; then {
            i=1
            while [ $i -le $1 ]
            do
                echo "$i"
                i=$((i+1))
            done    
        } else
            echo $stringE1
        fi
    }
    fi
} else {
    echo $stringE2
}
fi