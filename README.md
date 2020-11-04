# pgadmin
pgadmin helm chart

To test it you can deploy a postgress instance like:

```
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update
helm install postgres bitnami/postgresql --set postgresqlDatabase=changeme,postgresqlPassword=changeme,postgresqlUsername=changeme,postgresqlPostgresPassword=changeme,image.tag=13.0.0
```

Then install chart

```
helm install pgadmin ./pgadmin-chart
```

