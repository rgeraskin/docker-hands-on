## Description

For the last six months, the Acme Anvil Corporation has been migrating some of their bare metal infrastructure to Docker containers. A schism has developed between the members of your team on whether to use Docker Swarm or Kubernetes. To settle the dispute, your manager has decided to create a series of challenges. You have been tasked with setting up a Docker swarm with 5 nodes: 2 masters and 3 workers. The masters are to be configured to act only as masters. Next, you will create an httpd service with 3 replicas. Finally, you will scale the service up to 5 replicas and then down to 2.

## Additional Information and Resources

In this learning activity, you are tasked with scaling up a Docker Swarm service.

1.  Create a swarm with 2 masters and 3 worker nodes.
2.  Ensure that the 2 masters will only function as masters.
3.  Create an httpd service.
4.  Call the service  `httpd`.
5.  Map port  `80`  to port  `80`  on the container.
6.  Create  `3`  replicas.
7.  Use the  `httpd`  image.
8.  Scale the httpd service up to 5 nodes.
9.  Scale the httpd service down to 2 nodes.
