#!/usr/bin/env bash
echo "Updating apt-get..."
sudo apt-get update

# java
echo "Installing Java..."
sudo apt-get install -y openjdk-7-jre
# use "java -version" to check install


# tomcat
echo "Installing Tomcat..."
sudo apt-get install -y tomcat7
sudo apt-get install -y tomcat7-admin
sudo /etc/init.d/tomcat7 restart
# go to http://192.168.33.10:8080/manager to see manager


# geoserver
sudo cp /vagrant/geoserver.war /var/lib/tomcat7/webapps/geoserver.war
sudo /etc/init.d/tomcat7 restart
# got to http://192.168.33.10:8080/geoserver to see geoserver
