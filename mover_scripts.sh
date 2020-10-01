# !/bin/bash

carpeta=$1
lista_sh=$( find . -iname "*.sh" )


# Esto es de pretencioso nomas xd
mkdir $carpeta
#

# Esto es lo mas util del script
for i in $lista_sh
do
	echo $i
	mv $i $carpeta/
done
exit 0
