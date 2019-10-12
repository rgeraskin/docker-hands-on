#!/bin/bash
kubeadm init --pod-network-cidr=10.244.0.0/16 --kubernetes-version=1.11.3
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/v0.9.1/Documentation/kube-flannel.yml
kubectl get nodes
kubectl create -f deployment.yml
kubectl create -f service.yml
kubectl get pods
kubectl get services

kubectl apply -f deployment.yml
kubectl get pods

kubectl apply -f deployment.yml
kubectl get pods
