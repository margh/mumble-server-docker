FROM ubuntu:12.04
MAINTAINER Chris Williams "chris@christopher-williams.net"

RUN echo "deb http://us.archive.ubuntu.com/ubuntu/ precise universe" >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get -y install libicu48 mumble-server lsb-release

ADD start-mumble /usr/local/bin/start-mumble

RUN chmod +x /usr/local/bin/start-mumble

EXPOSE 64738
EXPOSE 64738/udp

CMD ["start-mumble"]
