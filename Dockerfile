# Alpine linux would be great for this, but it's DNS does not use search paths.
FROM ubuntu

ENV http_proxy http://one.proxy.att.com:8080/
ENV https_proxy http://one.proxy.att.com:8080/
ENV no_proxy .att.com,.sbc.com

RUN apt-get update
RUN apt-get -y install socat
ADD start.sh start.sh

# Usage: docker run -p <host-port>:<port> <this-container> <tcp|udp> <port> <service-name> <service-port> [timeout]
ENTRYPOINT ["/start.sh"]
