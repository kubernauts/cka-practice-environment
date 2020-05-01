# cka-practice-environment

## Getting the environment up and ready

- This repository is a forked version of <br>
  CREDITS: https://github.com/arush-sal/cka-practice-environment

- This fork focusses on binding minikube with practice environment.

### STEPS

- Run minikube

```
minikube start --vm-driver=virtualbox
```

- Run script to adjust the keys locations

```
sh script.sh
```

- Boot up the instance

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
