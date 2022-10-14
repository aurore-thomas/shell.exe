#!/bin/bash

# Faire des boucles : 

#Deux solutions proposées : 

#for i in {1..10}
#do
#	echo "Je suis un script qui arrive à faire une boucle $i"
#done


#Autre méthode :
 
j=1
while [ $j -le 10 ]
do
	echo "Je suis un script qui arrive à faire une boucle $j"
	((j++)) #Pour modifer la valeur des variables, il faut le faire entre (( ))
done



