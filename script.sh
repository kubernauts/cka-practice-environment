#!/bin/bash

USERNAME=`id -un`
cd ~/.kube
mkdir -p keys

profiles=$(minikube profile list -o json | jq -r '.valid | .[] | select(.Status=="Running") | .Name')

profiles_count=$(echo "$profiles" | wc -l | tr -d '[:space:]')

if [ "$profiles_count" != 1 ]; then
  options=($profiles)
  echo "Select running cluster you want to copy files from?"
  select opt in "${options[@]}"
  do
    profile_name=$opt
    if [ "$profile_name" == "" ]; then
      echo "Wrong option"
      continue
    fi
    break
  done
  else
  profile_name=$profiles
fi

echo "Using minikube profile $profile_name"

cp /Users/${USERNAME}/.minikube/ca.crt keys/
cp /Users/${USERNAME}/.minikube/profiles/$profile_name/client.crt keys/
cp /Users/${USERNAME}/.minikube/profiles/$profile_name/client.key keys/

gsed -i "s/\/Users\/${USERNAME}\/.minikube\/profiles\/minikube/.\/keys/g" config
gsed -i "s/\/Users\/${USERNAME}\/.minikube/.\/keys/g" config
