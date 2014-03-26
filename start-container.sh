#!/bin/bash

CONTAINER_ID=ffffff
PORT_NUMBER=40000

# bind external port to the default mumble port
docker run -d -p 127.0.0.1:$PORT_NUMBER:64738 -p 127.0.0.1:$PORT_NUMBER:64738/udp $CONTAINER_ID