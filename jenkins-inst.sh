#!/bin/bash

##please check root user privillages ## 

sudo apt-get install -y default-jdk

sudo apt-get install -y git-all


## add repo and keys##

sudo wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -

sudo chmod g+rw /etc/apt/sources.list.d/

sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common


sudo apt-get install jenkins



