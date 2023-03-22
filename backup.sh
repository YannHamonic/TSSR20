##!/bin/bash

# Script : sauvegarde les fichiers en les copiant avec une extension .bak
# Auteur : Y. Hamonic
# Date de création : 21/03/2023

# Entrée : Aucune
# Sortie :  Copie tous les fichiers du répertoire avec une extension .bak
#           Affiche le nombre de fichier sauvegardés

#--------------------------
# Déclaration des messages
#--------------------------
stringE="Erreur"

#--------------------------
# Traitement des informations
#--------------------------
Lfiles=$(ls -l --ignore=*.bak | awk '{print $9};')
LBCKfiles=$(ls *.bak | awk '{print $1};' FS=".bak")

nbsav=0

for eachfile in $Lfiles
do
    file_exist=0
    for eachbckfile in $LBCKfiles 
    do
        if [[ $eachfile == $eachbckfile ]] ; then {
            file_exist=$((file_exist+1))
            echo "le fichier $eachbckfile est déjà sauvegardé"
        }
        fi    
    done
    if [ $file_exist -eq '0' ] ; then {
        cp $eachfile $eachfile.bak
        nbsav=$((nbsav+1))
    }
    fi
done

echo "$nbsav fichiers ont été sauvegardés"

