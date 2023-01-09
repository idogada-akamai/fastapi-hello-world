# FastAPI Python Demo

This repository demos the flow of how to use FastAPI with Python to develop remotely on Kubernetes

## Requirements
* Docker
* Visual Studio Code with the following extensions installed:
  * [Remote - SSH](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-ssh)
  * [Remote - Kubernetes](https://marketplace.visualstudio.com/items?itemName=okteto.remote-kubernetes) (Optional)
* Kubeconfig with context to required cluster

## How to start?

* Open VS Code on your machine and enter the following command in the terminal:
```shell
okteto deploy --build --context <context to use> --namespace <namespace to use>
```
This command will build the Docker image, push it to the registry and deploy the application to the cluster using the Helm chart.

*  Run the following command to create the dev container and connect to it
```shell
okteo up --context <context to use> --namespace <namespace to use>
```

* Open the `Remote Explorer` on the side panel in VS Code -> select hello-word.okteto (open in a new window)

* Open extensions, install the recommended ones

* Debug :)

### Notes
* If you don't want to specify a context in eadh Okteto command enter the following command to set a default namespace
```shell
okteto context use <context name>
```