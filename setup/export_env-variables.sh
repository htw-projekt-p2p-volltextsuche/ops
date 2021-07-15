#!/bin/bash

echo "DOCKER_HOST=unix://$XDG_RUNTIME_DIR/docker.sock" >> ~/.bashrc;
echo "PATH=/usr/bin:$PATH" >> ~/.bashrc;
echo "DOCKER_HOST=unix:///run/user/1000/docker.sock" >> ~/.bashrc;

source ~/.bashrc;