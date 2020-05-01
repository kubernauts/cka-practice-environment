#!/bin/bash

USERNAME=`id -un`
cd ~/.kube
mkdir -p keys
cp /Users/${USERNAME}/.minikube/ca.crt keys/
cp /Users/${USERNAME}/.minikube/profiles/minikube/client.crt keys/
cp /Users/${USERNAME}/.minikube/profiles/minikube/client.key keys/

gsed -i "s/\/Users\/${USERNAME}\/.minikube\/profiles\/minikube/.\/keys/g" config
gsed -i "s/\/Users\/${USERNAME}\/.minikube/.\/keys/g" config
