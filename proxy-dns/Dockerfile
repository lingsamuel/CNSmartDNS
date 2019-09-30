FROM debian:jessie

MAINTAINER IMXQD <ahtlxqd@gmail.com>

ADD cloudflared-stable-linux-amd64.deb /cloudflare.deb

RUN apt-get update && \
    apt-get install -y ca-certificates && \
    dpkg -i /cloudflare.deb && \
    apt-get install -f && \
    apt-get autoclean --yes && \
    apt-get clean --yes && \
    rm -rf /cloudflare.deb

COPY config.yaml /etc/cloudflared/config.yaml

ENV LOCAL_PORT 5311

EXPOSE $LOCAL_PORT/tcp $LOCAL_PORT/udp

ENV UPSTREAM_1 "8.8.8.8"
ENV UPSTREAM_2 "8.8.4.4"

ADD run.sh /app/run.sh

CMD sh /app/run.sh