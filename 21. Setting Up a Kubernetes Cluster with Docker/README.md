
## Description

For the last six months, the Acme Anvil Corporation has been migrating some of their bare metal infrastructure to Docker containers. A schism has developed between the members of your team on whether to use Docker Swarm or Kubernetes. To settle the dispute, your manager has decided to create a series of challenges. You have been tasked with helping to create the Kubernetes cluster. Create a Kubernetes cluster with 3 nodes and then create a pod and service using Nginx.

## Additional Information and Resources

1.  Add the Kubernetes repo to  `/etc/yum.repos.d`.
    
    ```
    [kubernetes]
    name=Kubernetes
    baseurl=https://packages.cloud.google.com/yum/repos/kubernetes-el7-x86_64
    enabled=1
    gpgcheck=1
    repo_gpgcheck=1
    gpgkey=https://packages.cloud.google.com/yum/doc/yum-key.gpg https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg
    exclude=kube*
    ```
    
2.  Disable SELinux.
3.  Install Kubernetes, and start and enable the service.
4.  Set  `net.bridge.bridge-nf-call-iptables`  to  `1`  in your sysctl, initialize the cluster, and set the code network CIDR to  `10.244.0.0/16`.
5.  Install Flannel using the following URL:
    
    ```
    kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml
    ```
    
6.  Create a pod.
7.  Set the API version to  `v1`.
8.  Name the pod  `nginx-pod-demo`  in the metadata.
9.  Create an app label called  `nginx-demo`.
10.  Use the latest  `nginx`  image for the container.
11.  Name the container  `nginx-demo`.
12.  Set the container port to  `80`.
13.  Make sure you pull the latest image.
14.  Create a service.
15.  Set the API version to  `v1`.
16.  Name the service  `service-demo`  in the metadata.
17.  Create a selector that matches the pod's app label.
18.  Configure TCP port  `80`  to target port  `80`  on the container.
