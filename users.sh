##!/bin/bash

# Script : 
# Auteur : Y. Hamonic
# Date de création : 22/03/2023

# Entrée : aucune
# Sortie : liste des utilisateurs avec des processus actif trié alphabétiquement



#--------------------------
# Traitement des informations
#--------------------------

ps -eo user --sort user | uniq | sed '1 d'