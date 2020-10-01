# !/bin/bash

cantidad=$1

for i in $(seq $cantidad)
do
	touch "script_$i".sh
done
exit 0
