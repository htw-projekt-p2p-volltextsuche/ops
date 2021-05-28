#!/bin/bash
set -e;

# Standard config for http Server
sudo ufw default deny incoming;
sudo ufw default allow outgoing;
sudo ufw allow ssh;
sudo ufw allow http;

# Necessery ports for kubernetes
sudo ufw allow 16443
sudo ufw allow 10250
sudo ufw allow 10255
sudo ufw allow 25000
sudo ufw allow 12379
sudo ufw allow 10257
sudo ufw allow 10259
sudo ufw allow 19001

sudo ufw enable;
sudo ufw reload;