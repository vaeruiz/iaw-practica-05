#!/bin/bash

# Variables
IP_PRIVADA_FRONT1=
IP_PRIVADA_FRONT2=

# Activar depuracion
set -x

# Instalar apache
apt install apache2 -y

#Habilitar modulos
a2enmod proxy
a2enmod proxy_http
a2enmod proxy_ajp
a2enmod rewrite
a2enmod deflate
a2enmod headers
a2enmod proxy_balancer
a2enmod proxy_connect
a2enmod proxy_html
a2enmod lbmethod_byrequests

# Copiar 000-default
cp /home/ubuntu/iaw-practica-05/000-default.conf /etc/apache2/sites-available/

# Reemplazar variables
sed -i "s/IP-HTTP-SERVER-1/$IP_PRIVADA_FRONT1/" /etc/apache2/sites-available/000-default.conf
sed -i "s/IP-HTTP-SERVER-2/$IP_PRIVADA_FRONT2/" /etc/apache2/sites-available/000-default.conf

# Reiniciar apache
systemctl restart apache2
