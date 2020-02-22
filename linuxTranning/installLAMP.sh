#Author: Yue Pan

apt update
apt install -y apache2

apt update
apt install -y mysql-server

apt update
apt install -y openjdk-8-jdk

apt update
curl -O http://apache-mirror.8birdsvideo.com/tomcat/tomcat-9/v9.0.31/bin/apache-tomcat-9.0.31.tar.gz
mkdir /opt/tomcat
tar xzvf apache-tomcat-*tar.gz -C /opt/tomcat --strip-components=1
