# !/bin/bash

online=$( who | cut -d " " -f 1 )

for i in $online
do

	if [ "$i" == "$1" ];
	then
		echo "$i esta online!"
		exit 0
	fi

done

echo "$1 no esta en el servidor"
