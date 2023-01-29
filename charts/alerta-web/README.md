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

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| replicaCount | int | `1` |  |
| image.repository | string | `"hayk96/alerta-web"` |  |
| image.tag | string | `"8.7.0"` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| service.service | string | `"ClusterIP"` |  |
| service.port | int | `80` |  |
| ingress.enabled | bool| `false` |  |
| ingress.annotations | object | `{}` |  |
| ingress.path | string | `"/"` |  |
| ingress.hosts | list | `"alerta.example.com"` |  |
| ingress.tls | list | `[]` |  |
| resources.limits.cpu | string | `"200m"` |  |
| resources.limits.memory | string | `"1Gi"` |  |
| resources.requests.cpu | string | `"100m"` |  |
| resources.requests.memory | string | `"128Mi"` |  |
| alertaAdminPassword | string | `"ALERTA_ADMIN_PASSWORD"` |  |
| alertaAdminUsers | list | `"admin"` | The list of the admin users |
| alertaAdminKey | string | `"ALERTA_ADMIN_KEY"` |  |
| alertaApiKey | string | `"alertaApiKey"` |  |
| alertaInstallPlugins | list | `["prometheus", "normalise", "enhance"]` |  |
| alertaConfig.DEBUG | string | `"False"` | Debug mode for increased logging |
| alertaConfig.AUTH_REQUIRED | string | `"True"` | Users must authenticate when using web UI or command-line tool |
| alertaConfig.SIGNUP_ENABLED | string | `"False"` | Prevent self-service sign-up of new users via the web UI |
| alertaConfig.DELETE_EXPIRED_AFTER | int | `60` | Time period before deleting expired alerts |
| alertaConfig.DELETE_INFO_AFTER | int | `60` | Time period before deleting informational alerts |
| alertaConfig.COLUMNS | string | `"['severity', 'status', 'lastReceiveTime', 'environment', 'service', 'resource', 'event', 'value', 'text']"` | User defined columns and column order for alert list view |
| alertaConfig.ACTIONS | string | `"['createIssue', 'updateIssue']"` | Adds buttons to web console for operators to trigger custom actions against alert |
| alertaConfig.PLUGINS | string | `"['prometheus', 'normalise', 'enhance']"` | List of enabled plugins |
| alertaConfig.ALERTMANAGER_API_URL | string | `'"http://prometheus-alertmanager.svc"'` |  |
| alertaConfig.ALERTMANAGER_SILENCE_FROM_ACK | string | `"True"` |  |
| alertaConfig.LOG_HANDLERS | string | `"['console']"` | List of log handlers eg. console, file, wsgi |
| alertaConfig.COLOR_MAP | string | `"{'severity': {'security': '#000000', 'critical': 'red', 'major' : '#F89407', 'minor' : '#f8bc07', 'warning': '#1E90FF', 'indeterminate': '#a32cf2', 'informational': 'green', 'ok': '#00CC00', 'normal': '#0aab78', 'unknown': 'silver'}, 'text': 'white'}"` | Dictionary of severity colors, text and highlight color |
| postgresql.enabled | bool | `true` | Enable PgSQL as backend database |
| postgresql.postgresqlDatabase | string | `"alerta"` |  |
| postgresql.postgresqlUsername | string | `"alerta"` |  |
| postgresql.postgresqlPassword | string | `"PG_ALERTA_PASSWORD"` |  |
| postgresql.persistence.enabled | bool | `true` |  |
| postgresql.persistence.size | str | `"1Gi"` |  |