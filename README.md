# FastAPI Python Demo

This repository demos the flow of how to use FastAPI with Python to develop remotely on Kubernetes

## Requirements
* Docker
* Visual Studio Code with the following extensions installed:
  * [Remote - SSH](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-ssh)
  * [Remote - Kubernetes](https://marketplace.visualstudio.com/items?itemName=okteto.remote-kubernetes) (Optional)
* Kubeconfig with context to required cluster

## How to start?

* Clone the repo on your machine and enter the following command in the terminal (make sure that your in the repo's folder):
```shell
./okteto up --deploy --context <context to use> --namespace <namespace to use>
```
This command will deploy the application and shell into your dev container

* Open the `Remote Explorer` extension on the side panel in VS Code -> select hello-word.okteto (open in a new window)

* Open the source code path (`/app`) and wait for the tasks to complete

* Debug :)
