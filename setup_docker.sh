#!/bin/bash
sudo systemctl disable --now docker.service docker.socket;
/usr/bin/dockerd-rootless-setuptool.sh install;
export DOCKER_HOST=unix://$XDG_RUNTIME_DIR/docker.sock;