#IFS=","
#cat Shell_Userlist.csv

awk ' NR> 1 {print "L utilisateur est", $2, $3, ",son mot de passe est", $4, "et il est", $5}' FS=,  Shell_Userlist.csv

#read -r Shell_Userlist.csv

#if [ -f "$Shell_Userlist.csv" ]
#then
#exec < $--<Shell_Userlist.csv
#while
#read -r line
#do
#id=$(echo "$line" | awk -F=, '{print $1}')
#nom=$(echo "$line" | awk -F=, '{print $2, $3}')
#mdp=$(echo  "$line" | awk -F=, '{print $4}')
#role=$(echo "$line" | awk -F=, '{print $5}')

#useradd 

#if admin
#usermod


done
fi

