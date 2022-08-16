# alerta-web

Installs the Alerta Web UI and dependent database in Kubernetes.

## Get Helm Repository Info

```console
helm repo add alerta-web https://hayk96.github.io/alerta-web
helm repo update
```

_See [`helm repo`](https://helm.sh/docs/helm/helm_repo/) for command documentation._

## Install Helm Chart

```console
helm install [RELEASE_NAME] alerta-web/alerta-web
```

_See [helm install](https://helm.sh/docs/helm/helm_install/) for command documentation._

## Dependencies

By default this chart installs additional, dependent chart:

- [bitnami/postgresql](https://github.com/bitnami/charts/tree/master/bitnami/postgresql)

_See [helm dependency](https://helm.sh/docs/helm/helm_dependency/) for command documentation._

## Uninstall Helm Chart

```console
helm uninstall [RELEASE_NAME]
```

This removes all the Kubernetes components associated with the chart and deletes the release.

_See [helm uninstall](https://helm.sh/docs/helm/helm_uninstall/) for command documentation._

## Upgrading Chart

```console
helm upgrade [RELEASE_NAME] alerta-web/alerta-web
```
