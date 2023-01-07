# LAMP & Wordpress install
# By Andrii Klymukh

#!/bin/bash

sudo apt update

# Install core

sudo apt install apache2 php php-mysql libapache2-mod-php php-cli &&


# Install modules

sudo apt install php-curl php-gd php-mbstring php-xml php-xmlrpc php-soap php-intl php-zip


#Firewall

sudo ufw allow in "Apache Full"


#Download WP

sudo rm -rf /var/www/html/*

cd /tmp

wget https://wordpress.org/latest.tar.gz

tar xzvf latest.tar.gz

sudo cp -R wordpress/* /var/www/html


# Define rigths

sudo chown -R www-data:www-data /var/www/

sudo chmod -R 755 /var/www/
