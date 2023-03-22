##!/bin/bash

# Script : Passer en majuscule tous les caractères des paramètres
# Auteur : Y. Hamonic
# Date de création : 22/03/2023

# Entrée : plusieurs paramètres au format texte
# Sortie : l'ensemble des paramètres en majuscule

#--------------------------
# Déclaration des messages
#--------------------------

stringR=''

#--------------------------
# Traitement des informations
#--------------------------
for string in $@
do
    tmp_string=$(echo $string |tr [:lower:] [:upper:])
    stringR="$stringR$tmp_string "
done

echo $stringR