#!/bin/bash
set -e;

sudo sh ./install_services.sh

sudo sh ./setup_firewall.sh

sudo setup_kubernetes.sh

echo "Script finished, don't forget to enable addons!"