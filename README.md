# alerta-web
[![Alerta Web Docker Image CI](https://github.com/hayk96/alerta-web/actions/workflows/docker-image.yml/badge.svg)](https://github.com/hayk96/alerta-web/actions/workflows/docker-image.yml)

alerta/alerta-web project with custom modifications

#### Deployment via Helm
````shell
$ git clone https://github.com/hayk96/alerta-web.git
$ helm dependency update helm-charts/
$ helm install alerta helm-charts/
````

Here is the official [values.yaml](https://github.com/alerta/docker-alerta/blob/master/contrib/kubernetes/helm/alerta/values.yaml) of Alert helm-chart.
