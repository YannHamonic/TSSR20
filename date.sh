##!/bin/bash

# Script d'affichage de la date
# Auteur : Y. Hamonic
# Date de création : 20/03/2023

# Entrée : Aucune
# Sortie : Date courante au format hh:mm:ss jj/mm/aa

printf -v date '%(%H:%M:%S %d:%m:%Y)T\n'
echo $date
