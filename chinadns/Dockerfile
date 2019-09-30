FROM debian:jessie

MAINTAINER IMXQD <ahtlxqd@gmail.com>

ENV DNS_VER 1.3.2
ENV DNS_URL https://github.com/clowwindy/ChinaDNS/releases/download/${DNS_VER}/chinadns-${DNS_VER}.tar.gz
ENV DNS_FILE chinadns.tar.gz
ENV DNS_MD5 f3ece30f2a453d25cc22ef6e1ef579b0

ADD chinadns /usr/local/bin/
ADD iplist.txt /etc/iplist.txt
ADD chnroute.txt /etc/chnroute.txt

EXPOSE 5322/tcp 5322/udp

ENV CHINA_DNS "202.141.162.123"
ENV OUTSIDE_DNS "8.8.8.8"

ADD run.sh /app/run.sh
CMD sh /app/run.sh