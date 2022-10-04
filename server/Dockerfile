FROM ubuntu:latest

COPY ./udp2raw /usr/local/bin/udp2raw

RUN chmod +x /usr/local/bin/udp2raw

COPY ./run-s.sh /run.sh

RUN chmod +x /run.sh

RUN apt update

RUN apt install -y net-tools

RUN apt install -y iptables

ENTRYPOINT ["./run.sh"]
