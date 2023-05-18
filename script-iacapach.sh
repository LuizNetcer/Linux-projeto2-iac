#!/bin/bash

echo "atualizando servidor"
apt-get update
apt-get upgrade -y
echo "baixando arquivos da aplicação"
apt-get install apache2 -y

apt-get install unzip -y

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip 
unzip main.zip

cd linux-site-dio-main

cp -r * /var/www/html/

