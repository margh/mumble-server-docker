#!/bin/bash

CONTAINER_ID=<CONTAINER ID GOES HERE>
DATA_DIR=`pwd`/sample-data/
PORT_NUMBER=64738

docker run -d -p $PORT_NUMBER:64738 -p $PORT_NUMBER:64738/udp -v $DATA_DIR:/opt/mumble/ $CONTAINER_ID
