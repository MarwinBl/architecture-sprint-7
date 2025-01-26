#!/bin/bash

kubectl apply -f all-viewer.yaml
kubectl apply -f cluster-admin.yaml
kubectl apply -f secret-viewer.yaml
