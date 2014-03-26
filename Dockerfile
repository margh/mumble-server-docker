FROM ubuntu:13.04
MAINTAINER Nathan Rashleigh "nrashleigh@smokestack.io"

RUN apt-get update
RUN apt-get -y install mumble-server

# Set the key variables for the mumble server
ENV MUMBLE_SERVERPW xxxxx
ENV MUMBLE_SUPW yyyyy
ENV MUMBLE_MAXUSERS 100

# Replace ini values with env variables
RUN sed -i '/serverpassword=/d' /etc/mumble-server.ini && echo 'serverpassword=$MUMBLE_SERVERPW' >> /etc/mumble-server.ini 
RUN sed -i '/users=/d' /etc/mumble-server.ini && echo 'users=$MUMBLE_MAXUSERS' >> /etc/mumble-server.ini 
RUN murmurd -ini /etc/mumble-server.ini -supw $MUMBLE_SUPW

ADD start-mumble /usr/local/bin/start-mumble
RUN chmod +x /usr/local/bin/start-mumble

EXPOSE 40000
EXPOSE 40000/udp

CMD ["/usr/local/bin/start-mumble"]
USER mumble-server