FROM ubuntu:13.04
MAINTAINER Nathan Rashleigh "nrashleigh@smokestack.io"

RUN apt-get update
RUN apt-get -y install mumble-server

ADD start-mumble /usr/local/bin/start-mumble
ADD mumble-server.ini /opt/mumble/mumble-server.ini

RUN chmod +x /usr/local/bin/start-mumble

EXPOSE 40000
EXPOSE 40000/udp

CMD ["/usr/local/bin/start-mumble"]
USER mumble-server