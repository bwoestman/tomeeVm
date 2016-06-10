#!/usr/bin/env bash

TOMCAT_USERS="/home/vagrant/apache-tomee-webprofile-1.7.4/conf/tomcat-users.xml"

#download updates
sudo apt-get -y update
sudo apt-get -y upgrade

#install myphpadmin & java
sudo apt-get -y install default-jdk
#sudo apt-get -y install phpmyadmin

#download and unzip tomee+ 1.7.4 tarball
sudo wget http://apache.claz.org/tomee/tomee-1.7.4/apache-tomee-1.7.4-webprofile.tar.gz
sudo tar -xvf apache-tomee-1.7.4-webprofile.tar.gz

echo "username: 'tomcat', password: 's3cret', role: 'admin,admin-gui,manager-gui'"

if [ -f "$TOMCAT_USERS" ];
    then
        sudo rm $TOMCAT_USERS
    else
        echo "$TOMCAT_USERS does not exist, moving on."
fi

sudo cp /vagrant/tomcat-users.xml /home/vagrant/apache-tomee-webprofile-1.7.4/conf
sudo /home/vagrant/apache-tomee-webprofile-1.7.4/bin/startup.sh