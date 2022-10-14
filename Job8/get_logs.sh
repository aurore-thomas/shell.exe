#!/bin/bash


#Création de variables pour le jour et l'heure :
j=$(date '+%d-%m-%y')
h=$(date '+%H:%M') 

#Création de la variable pour le nom du fichier : 
fichier="number_connection_$j-$h"

#On compte le nombre de connexion et on le met dans un fichier que l'on archive
sudo grep -c "session opened for user aurore" /var/log/auth.log > $fichier
tar -cf fichier.tar.gz $fichier
mv fichier.tar.gz /home/aurore/Shell.exe/Job8/Backup/$fichier.tar.gz
rm $fichier

