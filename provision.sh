#!/bin/bash
echo '<<<<<<Starting>>>>>'
yum update -y

echo '<<<<<<Starting Python & Pip>>>>>'
sudo yum install -y python27
sudo yum install -y python-setuptools
sudo yum install -y epel-release
sudo yum install -y python-pip

echo '<<<<<<Installing Docker>>>>>'
curl -fsSL https://get.docker.com/ | sh
sudo usermod -aG docker vagrant
sudo service docker start

echo '<<<<<<Instal & Setup Virtual Env>>>>>'
sudo pip install virtualenv
sudo pip install virtualenvwrapper

su - vagrant -c 'echo "export WORKON_HOME=$HOME/.virtualenvs" >> ~/.bashrc'
su - vagrant -c 'echo ". /usr/bin/virtualenvwrapper.sh" >> ~/.bashrc'

sudo rm -rf ~/.cache/pip

echo '<<<<<<Instal Docker compose>>>>>'
sudo pip install docker-compose
