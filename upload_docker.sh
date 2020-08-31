#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=thomarudi/projet-5-prediction-app

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login
docker tag 487de6b65ea9 "$dockerpath:projet-5-prediction-app"

# Step 3:
# Push image to a docker repository
docker push $dockerpath
