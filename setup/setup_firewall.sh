#!/bin/bash

set -e;

sudo ufw default deny incoming;
sudo ufw default allow outgoing;

sudo ufw allow ssh;
sudo ufw allow http;

sudo ufw allow 8080/tcp;
sudo ufw allow 8421/tcp;
sudo ufw allow 8090;
sudo ufw allow 8430;
sudo ufw allow 8081;

sudo ufw enable;

echo "SETUP FIREWALL";