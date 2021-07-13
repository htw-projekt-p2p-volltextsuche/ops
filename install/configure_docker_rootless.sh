#!/bin/bash

set -e;

sudo systemctl disable --now docker.service docker.socket;
sudo apt-get install -y uidmap;
/usr/bin/dockerd-rootless-setuptool.sh install;
export DOCKER_HOST=unix://$XDG_RUNTIME_DIR/docker.sock;

echo "DOCKER HAS BEEN CONFIGURED TO RUN ROOTLESS";