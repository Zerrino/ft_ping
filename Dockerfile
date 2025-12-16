FROM debian:stable-slim

ENV DEBIAN_FRONTEND=noninteractive

RUN echo "wireshark-common wireshark-common/install-setuid boolean false" | debconf-set-selections

RUN apt-get update && apt-get install -y \
    nasm gcc make git strace netcat-openbsd vim net-tools iputils-ping \
    iproute2 tcpdump build-essential wireshark tshark

WORKDIR /root

COPY . .

CMD [ "sleep", "infinity" ]