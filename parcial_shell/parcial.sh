# !/bin/bash

#Script que compruebe si estamos a día 2 de ocubre. De ser así, que genere un archivo que contenga: la fecha, su apellido y nombre y calificacion del examen

fecha=$( date +%F | cut -d "-" -f 2,3 )
calificacion="10 (porfa <3)"

if [ "$fecha" == "10-02" ]; then
	echo "Fecha: $( date +%D )" > archivito.txt
	echo "Ingrese nombre y apellido: "
	read user
	echo -e "Nombre y apellido: $user\nCalificacion: $calificacion" >> archivito.txt
	clear
	echo ======ARCHIVITO======
	cat archivito.txt
fi


