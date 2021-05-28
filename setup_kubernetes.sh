#!/bin/bash

sudo snap install microk8s --classic --channel=1.21/stable;
sudo usermod -a -G microk8s $USER;
sudo chown -f -R $USER ~/.kube;
su - $USER;

echo "alias kubectl='microk8s kubectl'">>~/.bash_aliases;
source ~/.bash_aliases;

export LC_All=C.UTF-8
export LANG=C.UTF-8

microk8s enable dns storage ingress