# alerta-web
[![Alerta Web Docker Image CI](https://github.com/hayk96/alerta-web/actions/workflows/docker-image.yml/badge.svg)](https://github.com/hayk96/alerta-web/actions/workflows/docker-image.yml)
[![Artifact Hub](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/alerta-web)](https://artifacthub.io/packages/search?repo=alerta-web)
[![Docker Pulls](https://badgen.net/docker/pulls/hayk96/alerta-web?icon=docker&label=pulls)](https://hub.docker.com/r/hayk96/alerta-web/)
[![Docker Image Size](https://badgen.net/docker/size/hayk96/alerta-web?icon=docker&label=image%20size)](https://hub.docker.com/r/hayk96/alerta-web/)
[![Docker Stars](https://badgen.net/docker/stars/hayk96/alerta-web?icon=docker&label=stars)](https://hub.docker.com/r/hayk96/alerta-web/)
![Github stars](https://badgen.net/github/stars/hayk96/alerta-web?icon=github&label=stars)
![Github forks](https://badgen.net/github/forks/hayk96/alerta-web?icon=github&label=forks)
![Github issues](https://img.shields.io/github/issues/hayk96/alerta-web)

>alerta/alerta-web project with custom modifications

The official Helm values.yaml file by [@alertaio](https://github.com/alerta) is available [here](https://github.com/alerta/docker-alerta/blob/master/contrib/kubernetes/helm/alerta/values.yaml).

## Usage

[Helm](https://helm.sh) must be installed to use the charts.
Please refer to Helm's [documentation](https://helm.sh/docs/) to get started.

Once Helm is set up properly, start to use the chart as follows:

```console
helm repo add alerta-web https://hayk96.github.io/alerta-web
helm repo update
helm install alerta-web alerta-web/alerta-web
```
