#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="ylabanieh/prediction_microservices"

# Step 2
# Run the Docker Hub container with kubernetes
docker logic
kubectl run prediction_microservices --image $dockerpath:latest

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host

kubectl port-forward deployment/prediction_microservices 8000:80