#! /bin/bash
#helm install --namespace tilloo-services mongodb bitnami/mongodb --set auth.rootPassword=pAssw0rd1 --set persistence.enabled=false
kubectl apply -f mongodb.yaml
