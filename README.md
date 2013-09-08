Mumble server (murmurd) running in a Docker container

Usage
=====

    $ cd mumble-server-docker/
    $ sudo docker build .
    $ sudo docker images
    Edit start-container.sh to include your container ID, desired external port number, and superuser password
    $ sudo ./start-container.sh
