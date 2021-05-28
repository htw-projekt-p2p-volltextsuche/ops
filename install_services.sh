#!/bin/bash
set -e;

# Update 
sudo apt update;
sudo apt full-upgrade;

# Add necessery programs
sudo apt install nano;
sudo apt install ufw;
sudo apt install snapd;