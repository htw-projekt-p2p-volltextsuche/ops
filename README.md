# Description
an repository containing all the k8s konfigurationfiles and scripts used to deploy a node in the p2p-Network

# Deployment
1. clone this repository on the server that should act as a node
```
git clone https://github.com/htw-projekt-p2p-volltextsuche/ops.git
```
2. go into the folder containing this repo 
```
cd ops
```
3. run the setup.sh script
```
sudo sh setup.sh
```
4. add microk84 to usergroup to enable seemless admin privileges
```
sudo usermod -a -G microk8s $USER;
sudo chown -f -R $USER ~/.kube;
su - $USER;
```
5. (optional) set alias to type "kubectl" instead of "microk8s kubectl"
```
echo "alias kubectl='microk8s kubectl'">>~/.bash_aliases;
source ~/.bash_aliases;
```
6. enable necessery services of microk8s
```
microk8s enable dns storage ingress
```
### Only necessery once
- make a deployment (any node will do)
```
kubectl apply -f p2p-userinterface.yaml
```

### Join node to host (be sure to allways use the same host)
- run ```microk8s add-node``` and follow the instructions

