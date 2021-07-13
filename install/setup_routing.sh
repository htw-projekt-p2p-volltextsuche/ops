#!/bin/bash

set -e;

sudo iptables -A PREROUTING -t nat -i eth0 -p tcp --dport 80 -j REDIRECT --to-port 8080;

echo "SETUP ROUTING FROM 80 TO 8080";