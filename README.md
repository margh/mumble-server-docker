Mumble server (murmurd) running in a Docker container

Usage
=====

    $ cd mumble-server-docker/
    $ sudo docker build .
    $ sudo docker images
    $ sudo docker run -d -p :64738 -p :64738/udp <image ID from previous command>

Problems
========

* Forwarding is provided on the command line when running the container, and both the TCP and UDP ports need to be listed explicitly. It would be better to be able to put "EXPOSE 64738/both" in the Dockerfile and have it assigned automatically (or explicitly provided on the command line in one flag).
