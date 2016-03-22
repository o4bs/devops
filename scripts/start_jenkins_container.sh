#!/bin/sh
sudo docker run \
 -p 112.126.77.193:18080:8080 \
 -v /opt/data/jenkins_home:/var/jenkins_home \
 --restart="always" \
 --name="jenkins" \
 --memory="1024m" \
 jenkins
