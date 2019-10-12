## Description

For the last six months, the Acme Anvil Corporation has been migrating some of their bare metal infrastructure to Docker containers. A schism has developed between the members of your team on whether to use Docker Swarm or Kubernetes. To settle the dispute, your manager has decided to create a series of challenges. You have been tasked with using Helm charts to create an application using the  `httpd`  image. The service should be publicly accessible using NodePort.

## Additional Information and Resources

In this learning activity, you are tasked with creating a Helm chart that will be used to create an httpd application.

1.  Install Helm and set the version to  `v2.8.2`.
2.  Initialize Helm using the  `wait`  flag.
3.  Give Helm the permissions it needs to work with Kubernetes:
    
    ```
    kubectl --namespace=kube-system create clusterrolebinding add-on-cluster-admin --clusterrole=cluster-admin --serviceaccount=kube-system:default
    ```
    
4.  Create a directory called  `charts`  where you will create your Helm chart.
5.  Navigate to the  `charts`  directory and create a chart called  `httpd`.
6.  Edit the  `values.yaml`  file.
7.  Under  `images`, change the repository to use the  `httpd`  image.
8.  Make sure that  `tag`  is set to  `latest`.
9.  Under  `services`, change  `type`  to  `NodePort`.
10.  Install the chart you created by running the  `install`  command.
11.  Name the chart  `my-httpd`.
