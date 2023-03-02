#!/bin/bash

echo "atualizando servidor"

apt-get update
apt-get upgrade -y
apt install apache2 -y
apt install unzip -y
cd /tmp

echo "baixando arquivos"
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

