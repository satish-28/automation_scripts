#!/bin/bash

sudo apt -y install docker.io

sudo docker pull jenkins

#check the jenkins image 
docker images 

echo "Enter jenkins image name :"
read name 

docker run --name $name  -p 8080:8080 -p 50000:50000 -v /var/jenkins_home jenkins/jenkins

#check the jenkins run on docker 
docker ps 

#copy the password for browser installation 

#/var/jenkins_home/secrets/initialAdminPassword

firefox http://localhost:8080


