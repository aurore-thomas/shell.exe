#!/bin/bash

#On définit le séparateur dans le fichir csv
IFS=","

#On supprime les utilisateurs du fichier pour les actualiser
./suppr.sh

#On ajoute les utilisateur et on les mets Admin si nécessaire
#Le premier sed permet de supprimer la 1ere ligne du fichier
#Le 2eme sed permet de supprimer les espaces dans le tableau.
#[ -n "$role" ] permet de lire le fichier jusqu'à la dernière ligne et dernière case


cat Shell_Userlist.csv | sed 1d Shell_Userlist.csv | sed -e 's/ //g' | while read id prenom nom mdp role || [ -n "$role" ];
do
	pseudo="$prenom"-"$nom"
#	echo "$prenom $nom $mdp $role"
	sudo useradd "$pseudo"
	echo "$pseudo":"$mdp$mdp" | sudo chpasswd
	if [[ "$role" = *"Admin"* ]];
	then
		sudo usermod -aG sudo "$prenom-$nom"
	fi
done
