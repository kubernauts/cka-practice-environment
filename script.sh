#!/bin/bash

USERNAME=`id -un`
cd ~/.kube
mkdir -p keys

profile=$(minikube profile list -o json | jq '.valid' | jq -r '.[].Name')
cp /Users/${USERNAME}/.minikube/ca.crt keys/
cp /Users/${USERNAME}/.minikube/profiles/$profile/client.crt keys/
cp /Users/${USERNAME}/.minikube/profiles/$profile/client.key keys/

gsed -i "s/\/Users\/${USERNAME}\/.minikube\/profiles\/minikube/.\/keys/g" config
gsed -i "s/\/Users\/${USERNAME}\/.minikube/.\/keys/g" config
