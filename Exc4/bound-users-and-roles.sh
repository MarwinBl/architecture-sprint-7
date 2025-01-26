#!/bin/bash

# Связывание пользователя developer1 с ролью all-viewer
kubectl create rolebinding developer1-all-viewer-binding \
  --role=all-viewer \
  --serviceaccount=development:developer1 \
  --namespace=development

# Связывание пользователя security-specialist1 с ролью secret-viewer
kubectl create rolebinding security-specialist1-secret-viewer-binding \
  --role=secret-viewer \
  --serviceaccount=development:security-specialist1 \
  --namespace=development

# Связывание пользователя devops-engineer1 с ролью cluster-admin
kubectl create clusterrolebinding devops-engineer1-cluster-admin-binding \
  --clusterrole=cluster-admin \
  --serviceaccount=development:devops-engineer1

# Связывание пользователя ops-engineer1 с ролью pod-reader
kubectl create rolebinding ops-engineer1-pod-reader-binding \
  --role=pod-reader \
  --serviceaccount=development:ops-engineer1 \
  --namespace=development

# Связывание пользователя product-owner1 с ролью all-viewer
kubectl create rolebinding product-owner1-all-viewer-binding \
  --role=all-viewer \
  --serviceaccount=development:product-owner1 \
  --namespace=development
