#! /bin/bash


# mongodb
helm delete --purge mongodb

# tilloo
kubectl delete -f tilloo.yaml
kubectl delete -f tilloo-namespaces.yaml
