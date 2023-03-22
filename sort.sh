##!/bin/bash

# Script : Trie les paramètres par ordre alphabétique
# Auteur : Y. Hamonic
# Date de création : 22/03/2023

# Entrée : 
# Sortie : 

#--------------------------
# Déclaration des messages
#--------------------------
stringE="Erreur : Cette commande demande au moins un argument en paramètre"

#--------------------------
# Traitement des informations
#--------------------------
#echo $@
stringR=$(echo $@ | tr ' ' '\n' | sort | tr '\n' ' ')

echo $stringR