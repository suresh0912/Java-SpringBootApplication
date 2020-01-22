#!/bin/bash

sudo apt install software-properties-common
sudo apt-add-repository ppa:webupd8team/java
sudo apt update
sudo apt install oracle-java8-installer
java -version

