#!/bin/bash

sudo yum update -y --exclude=kernel

sudo yum install -y vim git unzip screen

sudo yum install -y httpd httpd-devel httpd-tools

sudo chkconfig --add httpd
sudo chkconfig httpd on
sudo service httpd stop

sudo service httpd start

sudo yum install -y php php-cli php-common php-devel php-mysql

sudo yum install -y mysql mysql-server mysql-devel

sudo chkconfig --add mysqld
sudo chkconfig mysqld on
sudo service mysqld start

mysql -u root -e "CREATE DATABASE IF NOT EXISTS dev_test";
mysql -u root -e "SHOW DATABASES";

service httpd restart

cd vagrant

sudo -u vagrant wget -q https://raw.githubusercontent.com/anamikamane/vagrant/master/file/index.html

sudo -u vagrant wget -q https://raw.githubusercontent.com/anamikamane/vagrant/master/file/info.php
