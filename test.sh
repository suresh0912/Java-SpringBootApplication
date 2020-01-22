#!/bin/bash


sudo apt-get -y update
sudo apt-get -y install aptitude pbuilder

#Install Java JDK 8

sudo apt install software-properties-common
sudo apt-add-repository ppa:webupd8team/java
sudo apt update
sudo apt install oracle-java8-installer
java -version

# Install NGINX

sudo wget http://nginx.org/keys/nginx_signing.key
sudo apt-key add nginx_signing.key


sudo apt update
sudo apt install nginx

sudo systemctl start nginx
sudo systemctl enable nginx

#Install Spring Boot CLIPermalink

sudo apt install unzip zip
sudo apt install curl
curl -s https://get.sdkman.io | bash
source /var/lib/jenkins/.sdkman/bin/sdkman-init.sh
sdk help
sdk install springboot
spring version
sdk install gradle 4.5.1

spring init --build=gradle --dependencies=web --name=hello hello-world
spring init --list

echo "completed the Java-SpringBootApplication"
