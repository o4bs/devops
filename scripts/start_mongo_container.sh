#!/bin/sh
sudo docker run \
 -p 127.0.0.1:27017:27017 \
 -v /opt/data/mongo_home:/data/db \
 --restart="always" \
 --name="mongo" \
 --memory="1024m" \
 mongo:3.0
