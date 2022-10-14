#!/bin/bash

# Calculator : 

# First method  :
#if [ $2 = + ]
#then 
#	echo "$(($1+$3))"
#fi

#if [ $2 = - ]
#then
#	echo "$(($1-$3))"
#fi

#if [ $2 = * ]
#then
#	echo "$(($1*$3))"
#fi

#if [ $2 = / ]
#then
#	echo "$(($1/$3))"
#fi

# On aurait pu faire avec 'elif' mais ce n'est pas recommandé lorsqu il y a
# plus de trois options. 


# Second method : 
case $2 in 
"+")
	echo "$(($1+$3))" ;;
"-")
	echo "$(($1-$3))" ;;
"*")
	echo "$(($1*$3))" ;;
"/")
	echo "$(($1/$3))" ;;
esac

#Remarque : avec case, lors de la multiplication, il faut inscrire un \ avant *
# car  celle-ci se met après pour chaque calcul.
