#!/bin/bash

source ./config.sh

echo "Creating Backup Namespace '$NAMESPACE'"
kubectl create namespace $NAMESPACE

echo "Creating Backup Secrets"
kubectl create secret generic app-secrets --from-env-file=secrets.env -n $NAMESPACE

echo "Deploying the AutoBackup Deployment"
kubectl apply -f deploy.yaml -n $NAMESPACE

