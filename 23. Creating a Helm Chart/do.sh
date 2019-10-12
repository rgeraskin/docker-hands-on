#!/bin/bash
curl https://raw.githubusercontent.com/helm/helm/master/scripts/get > /tmp/get_helm.sh
chmod +x /tmp/get_helm.sh
DESIRED_VERSION=v2.8.2 /tmp/get_helm.sh
helm init --wait
kubectl --namespace=kube-system create clusterrolebinding add-on-cluster-admin --clusterrole=cluster-admin --serviceaccount=kube-system:default
mkdir charts
cd charts
helm create httpd
cd httpd

sed -i 's/repository: nginx/repository: httpd/' values.yaml
sed -i 's/tag: stable/tag: latest/' values.yaml
sed -i 's/type: ClusterIP/type: NodePort/' values.yaml

helm install --name my-httpd ./

kubectl get pods
kubectl get services

export NODE_PORT=$(kubectl get --namespace default -o jsonpath="{.spec.ports[0].nodePort}" services my-httpd)
export NODE_IP=$(kubectl get nodes --namespace default -o jsonpath="{.items[0].status.addresses[0].address}")
echo http://$NODE_IP:$NODE_PORT
