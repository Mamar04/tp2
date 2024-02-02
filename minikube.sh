#!/bin/bash

# Update package list
sudo apt-get update -y

# Install necessary packages
sudo apt-get install curl wget apt-transport-https virtualbox virtualbox-ext-pack -y

# Install Docker
echo "Installing Docker"
sudo apt update && sudo apt -y install docker.io
sudo systemctl start docker --now
sudo chmod 666 /var/run/docker.sock 

# Apply system updates
echo "Applying updates"
sudo apt update -y 
sudo apt upgrade -y

# Download Minikube binary
echo "Downloading Minikube Binary"
wget https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 -O minikube
sudo mv minikube /usr/local/bin/
sudo chmod +x /usr/local/bin/minikube
minikube version

# Install Kubectl utility
echo "Installing Kubectl utility"
sudo curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
chmod +x kubectl
sudo mv kubectl /usr/local/bin/
kubectl version -o yaml

# Start Minikube
echo "Starting Minikube"
minikube start --driver=virtualbox


# Check Minikube status
echo "Checking Minikube status"
minikube status

git add Dockerfile ansible.sh minikube.sh
