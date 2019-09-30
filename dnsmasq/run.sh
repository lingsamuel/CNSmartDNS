#!/bin/bash
sed -i "s/114.114.114.114/${CHINA_DNS}/g" /etc/dnsmasq.d/accelerated-domains.china.conf
sed -i "s/172.22.0.4#5311/${CLOUDFLARED_IP}/g" /etc/dnsmasq.d/gfwlist2dnsmasq.conf
sed -i "s/172.22.0.2#5322/${CHINADNS_IP}/g" /etc/dnsmasq.conf
dnsmasq -d --log-queries -p 5300