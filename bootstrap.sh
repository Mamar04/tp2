#!/usr/bin/env bash

sudo apt-get update
sudo apt-get -y install build-essential libssl-dev

curl https://raw.githubusercontent.com/creationix/nvm/v0.17.2/install.sh | bash

source ~/.nvm/nvm.sh

nvm install 0.11.14

npm install express
npm install -g nodemon


curl --silent --location https://rpm.nodesource.com/setup | bash -
yum -y install nodejs
yum install gcc-c++ make

npm install
npm start
sudo npm install --global smee-client

# if ! [ -L /var/www ]; then
#   rm -rf /var/www
#   ln -fs /vagrant /var/www
# fi
npm install
npm start

