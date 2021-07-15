#!/bin/bash

set -e;

sh setup/install_apps.sh;
sh setup/setup_firewall.sh;
sh setup/setup_routing.sh;
sh setup/install_docker.sh;
sh setup/configure_docker_rootless.sh;
sh setup/install_docker-compose.sh;
sh setup/export_env-variables.sh;

echo "ALL SCRIPTS RAN WITHOUT ISSUES - SERVER IS SET UP!";