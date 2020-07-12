# CKA Practice Environment

## Getting the environment up and ready

- This repository is a fork of the original version by Arush Sal which was   enhanced by Ankit Agrawal. <br>
CREDITS goes to these awesome Kubernauts! <br> 
Origin: https://github.com/arush-sal/cka-practice-environment <br>
Enhancement: https://github.com/aankittcoolest/cka-practice-environment

- This fork focusses on binding minikube with the practice environment, which is based on GateOne Terminal.

### STEPS

- Run minikube

```
minikube start --vm-driver=virtualbox
```

- Run script to adjust the keys locations

```
sh script.sh
```

- Boot up the instance (please adapt the user in the compose file)

```
docker-compose up --build
```

- Visit the test at following URL.

```
http://localhost
```

- Visit the terminal at following URL.

```
http://localhost:8080
```
