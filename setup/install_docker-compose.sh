#!/bin/bash

set -e;

sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose;
sudo chmod +rx /usr/local/bin/docker-compose;

echo "INSTALLED DOCKER-COMPOSE";