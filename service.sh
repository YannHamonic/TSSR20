##!/bin/bash

# Script : Vérifie l'existence et le statut d'un service
# Auteur : Y. Hamonic
# Date de création : 24/03/2023

# Entrée : $1 : Nom du service recherché
# Sortie : Existence et statut du service

#--------------------------
# Déclaration des messages
#--------------------------
stringE="Erreur : Cette commande demande au moins un nom de service en paramètre"
#--------------------------
# Traitement des informations
#--------------------------
if [ ${1:?$stringE} ] ; then {
    # recherche de la présence du service
    service=$(systemctl list-units --all | grep $1.service | awk '{print $1" "$4};')
    # Statut du service
    status=$(echo ${service} |awk '{print $2};')

    # affichage du résultat
    if [[ ${service} ]]; then {
        echo "Le service $1 est présent et son statut est ${status}"
    } else {
        echo "Le service $1 n'est pas présent"
    }
    fi
}
fi
