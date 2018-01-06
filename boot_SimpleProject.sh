#!/usr/bin/env bash

PS1="(`basename \"$VIRTUAL_ENV\"`):/\W$ "

sudo apt-get update

sudo apt-get install -y python-pip
sudo apt-get update
sudo apt-get install -y apache2
sudo apt-get update
sudo apt-get install -y apache2-mpm-prefork
sudo apt-get update
sudo apt-get install -y apache2-utils
sudo apt-get update
sudo apt-get install -y libexpat1
sudo apt-get update
sudo apt-get install -y libapache2-mod-wsgi
sudo apt-get update
sudo apt-get install -y python-dev
sudo apt-get install -y python-psycopg2
sudo pip install django==1.11
# sudo apt-get install -y python3-pip
# sudo apt-get install -y libapache2-mod-wsgi-py3
sudo apt-get install -y git

# if ! [ -L /var/www ]; then
#   rm -rf /var/www
#   ln -fs /vagrant /var/www
# fi
