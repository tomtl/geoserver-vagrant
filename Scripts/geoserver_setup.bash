# setup vagrant
vagrant init ubuntu/trusty64
vagrant box update
vagrant up
vagrant ssh
sudo apt-get update

# java
sudo apt-get install -y openjdk-7-jre
# use "java -version" to check install

# tomcat
sudo apt-get install -y tomcat7
sudo apt-get install -y tomcat7-admin
sudo /etc/init.d/tomcat7 restart
# go to http://192.168.33.10:8080/manager to see manager

# Geoserver 2.7.6
# download geoserver, then copy the war file geoserver.war to the vagrant synced folder
sudo cp /vagrant/geoserver.war /var/lib/tomcat7/webapps/geoserver276.war
sudo /etc/init.d/tomcat7 restart
# got to http://192.168.33.10:8080/geoserver276 to see geoserver
