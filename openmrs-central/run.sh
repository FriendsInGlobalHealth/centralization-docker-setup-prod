#!/bin/sh

apt-get update
apt-get install -y curl

if test ! -f "/usr/local/tomcat/webapps/openmrs.war"; then
  curl -L https://downloads.sourceforge.net/project/openmrs/releases/OpenMRS_Platform_2.3.3/openmrs.war -o /usr/local/tomcat/webapps/openmrs.war
fi

./bin/init.sh

./bin/catalina.sh run
