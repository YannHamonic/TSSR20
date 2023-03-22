##!/bin/bash

# Script : Affiche des informations sur le script et ses paramètres
# Auteur : Y. Hamonic
# Date de création : 21/03/2023

# Entrée : paramètres indéterminé
# Sortie : Affiche le nom du script, son emplacement d'exécution, ses paramètres

## Donne le nom du script
printf '%s\n' "Script : $(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"

## Donne le chemin d'exécution du script
printf '%s\n' "Chemin d'exécution : $(dirname "${BASH_SOURCE[0]}")/"

## Affiche les paramètres
for ((i = 1; i <= $#; i++ )); do
  printf '%s\n' "Argument $i : ${!i}"
done

