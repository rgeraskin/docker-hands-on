## Description

For the last six months, the Acme Anvil Corporation has been migrating some of their bare metal infrastructure to Docker containers. A schism has developed between the members of your team on whether to use Docker Swarm or Kubernetes. To settle the dispute, your manager has decided to create a series of challenges. You have been tasked with setting up a Kubernetes cluster with 3 nodes: 1 master and 2 workers. First, you will create a deployment with 3 replicas using the  `httpd`  image. Next, you will create a service that will make the pod publicly accessible. Finally, you will scale the pod up to 5 replicas and then down to 2.

Additional Information and Resources

In this learning activity, you are tasked with scaling up a Kubernetes pod.

1.  Create a Kubernetes cluster with 1 master and 2 worker nodes.  
    Install Flannel using the following URL:
    
    ```
    https://raw.githubusercontent.com/coreos/flannel/v0.9.1/Documentation/kube-flannel.yml
    ```
    

#### Create a Deployment

1.  Set the API version to  `app/v1`.
2.  The kind should be set to  `Deployment`.
3.  Name the deployment  `httpd-deployment`.
4.  Create a label called  `app`  and set it to  `httpd`.
5.  Create a ReplicaSet that has the following:
    -   3 replicas
    -   A match label with a value of  `httpd`
6.  Create a template for the ReplicaSet.
7.  The app label should have a value of  `httpd`.
8.  The container specification should reflect the following:
    -   The name should be set to  `httpd`.
    -   The image should be  `httpd`  with the latest tag.
    -   The container port should be set to  `80`.
9.  Create the deployment.

#### Create a Service

1.  Set the API version to  `v1`.
2.  The kind should be set to  `Service`.
3.  Name the service  `service-deployment`.
4.  Create a spec for the service.
5.  Make sure there is a selector called  `app`  with a value of  `httpd`.
6.  Create a port using the TCP protocol.
7.  Set the port to  `80`.
8.  Set the type to  `NodePort`.
9.  Create the service.
10.  Test the service to make sure you can access the pod.

#### Scale the Pod

1.  After you verify that the pod is accessible, scale the pod up to 5 replicas.
2.  Verify that there are 5 replicas.
3.  Scale the pod down to 2 replicas.
