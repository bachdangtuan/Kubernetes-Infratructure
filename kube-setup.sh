#!/bin/bash

echo "----------------------[ Install Minikube ]----------------------"
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube
echo "----------------------------------------------------------------"

echo "----------------[ Starting Minikube and Testing Installation ]-----------------"
sudo usermod -aG docker $USER && newgrp docker

minikube start

minikube status

curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

kubectl version
echo "--------------------------------- [ END ] --------------------------------------"