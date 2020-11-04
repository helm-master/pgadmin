# pgadmin
pgadmin helm chart

## Install form helmfile

This is the preferred method.

### Prerequisites

```
helm plugin install https://github.com/aslafy-z/helm-git --version 0.8.1
helm plugin install https://github.com/databus23/helm-diff
helm plugin install https://github.com/futuresimple/helm-secrets
```

### Real install
```
helmfile apply
```


## Install chart from local directory

```
helm install pgadmin ./pgadmin-chart
```

## Install chart from repository

```
helm plugin install https://github.com/aslafy-z/helm-git --version 0.8.1
helm repo add pgadmin git+https://github.com/helm-master/pgadmin@pgadmin-chart?ref=main
helm repo update
helm install pgadmin pgadmin/pgadmin
```

## Test it you can deploy a postgress instance like:

```
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update
helm install postgres bitnami/postgresql --set postgresqlDatabase=changeme,postgresqlPassword=changeme,postgresqlUsername=changeme,postgresqlPostgresPassword=changeme,image.tag=13.0.0
```
