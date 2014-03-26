Mumble server (murmurd) running in a Docker container

Usage
=====

Edit the ENV lines for your passwords and users. These will be written over the defaults in the murmur ini.

    $ sudo docker build .
    $ sudo docker images

Edit start-container.sh to include your container ID.
Make sure the port number in the sh matches the exposed port in the Dockerfile.

    $ sudo ./start-container.sh

Mad Thanks to [Nitron](https://github.com/Nitron)