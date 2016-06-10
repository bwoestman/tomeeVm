#!/usr/bin/env bash

TOMCAT_USERS="/home/vagrant/apache-tomee-webprofile-1.7.4/logs/catalina.out"

if [ -f "$TOMCAT_USERS" ];
    then
        sudo chmod 777 $TOMCAT_USERS
    else
        echo "$TOMCAT_USERS does not exist, moving on."
fi

sudo /home/vagrant/apache-tomee-webprofile-1.7.4/bin/startup.sh