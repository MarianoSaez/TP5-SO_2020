# !/bin/bash

echo **************Script para levantar pagina web simple**************\n

echo Ingrese su apellido: 
read apellido

echo Creando carpeta en /var/www/html/so/$apellido
mkdir /var/www/html/so/$apellido

echo Creando index.html
echo Hola mundo! >> /var/www/html/so/$apellido/index.html

echo Cambiando permisos de ejecucion
chmod 755 /var/www/html/so/$apellido/index.html

echo Probando la pagina con curl
curl 10.100.200.11/so/$apellido/
