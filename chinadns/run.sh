#!/bin/bash
set -ex
chinadns -v -m -c /etc/chnroute.txt -p 5322 -s ${CHINA_DNS},${OUTSIDE_DNS}