FROM debian:jessie

MAINTAINER IMXQD <ahtlxqd@gmail.com>

RUN apt-get update && \
    apt-get install -y dnsmasq curl && \
    apt-get autoclean --yes && \
    apt-get clean --yes

ADD accelerated-domains.china.conf /etc/dnsmasq.d
ADD gfwlist2dnsmasq.conf /etc/dnsmasq.d

ENV CHINA_DNS "114.114.114.114"
ENV CLOUDFLARED_IP "172.22.0.4#5311"
ENV CHINADNS_IP "172.22.0.2#5322"

RUN echo '' >> /etc/dnsmasq.conf && \
    echo 'server=172.22.0.2#5322' >> /etc/dnsmasq.conf && \
    echo 'conf-dir=/etc/dnsmasq.d/,*.conf' >> /etc/dnsmasq.conf

EXPOSE 5300 5300/udp

ADD run.sh /app/run.sh

CMD sh /app/run.sh