#!/bin/bash

set -e;

sudo apt update;
sudo apt full-upgrade;
sudo apt install nano;
sudo apt install ufw;

echo "INSTALLED ESSENTIAL APPS";