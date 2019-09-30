#!/bin/bash
sed -i "s,8.8.8.8,${UPSTREAM_1},g" /etc/cloudflared/config.yaml
sed -i "s,8.8.4.4,${UPSTREAM_2},g" /etc/cloudflared/config.yaml
cloudflared proxy-dns --port $LOCAL_PORT --address 0.0.0.0 --upstream "${UPSTREAM_1}" --upstream "${UPSTREAM_2}"