##!/bin/bash

# Script : Affiche le paramètre numérique le plus élevé
# Auteur : Y. Hamonic
# Date de création : 21/03/2023

# Entrée : $1 : valeur numérique, $2 valeur numérique
# Sortie : Affiche la paramètre à la valeur la plus élevé

#--------------------------
# Déclaration des messages
#--------------------------
stringE="Erreur : Cette commande demande deux paramètres numériques comme arguments"
stringR="La valeur la plus grande est : "

#--------------------------
# In user, don't trust
#--------------------------
# Les paramètres existent
#param1=${1:?$stringE}
#param2=${2:?$stringE}

# Fonction de vérification qu'une variable est un nombre
isint () {
    if [[ $1 =~ [+-]?[0-9]+[\.]?[0-9]+? ]]; then {
        return
    } else {
        false
    }
    fi
}

#--------------------------
# Traitement des informations
#--------------------------
if [ ${2:?$stringE} ] ; then {
    ## Comparaison des valeurs
    if $(isint $1) && $(isint $2) ; then {
        if (( $(echo "$1 > $2" |bc -l) )) ; then {
            printf '%s\n' "$stringR$1"
        } else {
            printf '%s\n' "$stringR$2"
        }
        fi
    } else {
        echo "$stringE"
    }
    fi
}
fi