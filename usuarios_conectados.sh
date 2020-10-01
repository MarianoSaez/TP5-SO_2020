	# !/bin/bash

# Obtenemos las listas de gente total y gente online
users=$( cat /etc/passwd | cut -d ":" -f 1 )
online=$( who | cut -d " " -f 1 )

# Con cut me dejo solo los nombres de los usuarios
#  sacando todo los otro

# Este flag se usa para saber cuando alguien esta presente o no
flag=0


# Iteramos sobre la lista de gente total
for i in $users
do
	flag=0
	# Iteramos dentro de la lista de gente online
	for j in $online
        do
	# Cuando la persona i de la lista de gente total
	#  es igual a la persona j de la lista de gente online
	#  se hace echo de esa persona como conectado
                if [ "$i" == "$j" ];    
                then
			echo "$i esta conectado"
			flag=1
			# El flag se modifica para que el sig.
		       	#  condicional no sea verdadero	
                fi
                
        done
	
	# Si el condicional no fue modificado es porque
	#  la persona no estaba online asi lo mostramos offline
	if [ $flag == 0 ];
	then
		echo "$i esta desconectado"
	fi

done

