#!/bin/bash
http_proxy="http://127.0.0.1:1081/"
PROXY="--build-arg HTTP_PROXY=$http_proxy --build-arg HTTPS_PROXY=$http_proxy --build-arg http_proxy=$http_proxy --build-arg https_proxy=$http_proxy --network=host"

pushd chinadns
docker build ${PROXY} -t cnsmartdns_chinadns .
popd

pushd dnsmasq
docker build ${PROXY} -t cnsmartdns_dnsmasq .
popd

pushd proxy-dns
docker build ${PROXY} -t cnsmartdns_proxy-dns .
popd
