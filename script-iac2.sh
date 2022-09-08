#!/bin/bash

echo Atualizando o servidor.....

apt update -y
apt upgrade -y

echo Instalando o Apache 2......

apt install apache2 -y

echo Instalando o unzip

apt install unzip

echo Baixando a aplicação......

cd /tmp/
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
echo extraindo arquivos.....
unzip main.zip

echo Copiando arquivos.....

cp -r /tmp/linux-site-dio-main/* /var/www/html/

echo subindo a aplicacao

echo FIM


