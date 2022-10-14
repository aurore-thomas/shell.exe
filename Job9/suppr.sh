#!/bin/bash

#On supprime tous les utilisateurs du fichier .csv


IFS=","

cat Shell_Userlist.csv | sed 1d Shell_Userlist.csv | sed -e 's/ //g' | while read id prenom nom mdp role || [ -n "$role" ];
do
	pseudo="$prenom"-"$nom"
	sudo userdel "$pseudo"
done 
