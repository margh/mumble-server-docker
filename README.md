Mumble server (murmurd) running in a Docker container

Usage
=====

    $ cd mumble-server-docker/
    $ sudo docker build .
    $ sudo docker images
    $ sudo docker run -i -t -p 64738:64738 -p 64738:64738/udp <image ID from previous command> /bin/bash
    (Now inside the container)
    # /usr/local/bin/start-mumble

Problems
========

* For some reason the "start-mumble" script doesn't work if run directly by Docker. I haven't yet managed to determine if this is a problem with Docker, Ubuntu, the script, mumble-server.ini, or murmurd itself.
* Forwarding is provided on the command line when running the container, and both the TCP and UDP ports need to be listed explicitly. It would be better to be able to put "EXPOSE 64738/both" in the Dockerfile and have it assigned automatically (or explicitly provided on the command line in one flag).
