## Description

For the last six months, the Acme Anvil Corporation has been migrating some of their bare metal infrastructure to Docker containers. A schism has developed between the members of your team on whether to use Docker Swarm or Kubernetes. Your manager has decided to settle the dispute by creating two competing demos for Docker Swarm and Kubernetes. You have been tasked with helping to create the Docker Swarm demo. Create a swarm with three nodes and then create a service using the  `weather-app`  image.

## Additional Information and Resources

In this lab, you are tasked with setting up a Docker swarm.

1.  Log in to Swarm Server 1. This will be your swarm master.
2.  Initialize a new Docker swarm.
3.  Add two worker nodes to the swarm.
4.  Create a new swarm service using the  `weather-app`  image.
5.  Name the service  `weather-app`.
6.  Publish port  `80`  and map it to port  `3000`  on the container.
7.  Create 3 replicas.
