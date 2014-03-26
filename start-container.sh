#!/bin/bash

CONTAINER_ID=ffffff
PORT_NUMBER=40000

# bind external port to the default mumble port
docker run -d -p $PORT_NUMBER:64738 -p $PORT_NUMBER:64738/udp $CONTAINER_ID