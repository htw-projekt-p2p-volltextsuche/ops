#!/bin/bash

export DOCKER_HOST=unix://$XDG_RUNTIME_DIR/docker.sock;
export PATH=/usr/bin:$PATH;
export DOCKER_HOST=unix:///run/user/1000/docker.sock;