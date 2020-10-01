# !/bin/bash

nombre=$( date +%F )

tar -cvzf "$nombre.tar.gz" .

scp "$nombre.tar.gz" "mm.saez@10.100.200.11:/home/mz/so2020/mm.saez"
