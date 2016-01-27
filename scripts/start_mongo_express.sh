#!/bin/bash

echo "Access 127.0.0.1:8081 for the mongo-express UI".

docker run -it --rm \
    --link mtm_mongo_1:mongo \
    -p 127.0.0.1:8081:8081 \
    knickers/mongo-express:0.29.20

