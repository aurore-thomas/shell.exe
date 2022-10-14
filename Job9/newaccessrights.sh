#!/bin/bash

new=$(sudo find /home/aurore/Shell.exe/Job9/Shell_Userlist.csv -mmin -10 | wc -l)
#echo "new" 

if [ $new = 1 ]
then  
	echo "Changement parmi les utilisateurs"
	./accessrights.sh

elif [ $new = 0 ]
then
	echo "Aucun changement"

else 
	echo "Erreur"

fi 


 
