#!/bin/bash
cat <<EOF > /etc/yum.repos.d/k8s.repo
[kubernetes]
name=Kubernetes
baseurl=https://packages.cloud.google.com/yum/repos/kubernetes-el7-x86_64
enabled=1
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://packages.cloud.google.com/yum/doc/yum-key.gpg https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg
exclude=kube*
EOF
setenforce 0
yum install -y kubelet-1.12.7 kubeadm-1.12.7 kubectl-1.12.7 --disableexcludes=kubernetes
systemctl enable kubelet
systemctl start kubelet
cat <<EOF > /etc/sysctl.d/k8s.conf
net.bridge.bridge-nf-call-iptables = 1
net.bridge.bridge-nf-call-ip6tables = 1
EOF
sysctl --system

kubeadm init --pod-network-cidr=10.244.0.0/16 --kubernetes-version=1.12.7
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml
kubeadm token create --print-join-command

kubectl get nodes
kubectl create -f pod.yml
kubectl get pods
kubectl create -f service.yml
kubectl get services

kubectl delete pod nginx-pod-demo
kubectl delete service service-demo
