## Description

For the last six months, the Acme Anvil Corporation has been migrating some of their bare metal infrastructure to Docker containers. A schism has developed between the members of your team on whether to use Docker Swarm or Kubernetes. To settle the dispute, your manager has decided to create a series of challenges. You have been tasked with creating a demo on how to back up and restore a Docker swarm. You are to set up a Docker swarm with 3 nodes, scale the backup service up to 3 nodes, and back up your master node and restore it to a backup instance.

## Additional Information and Resources

In this lab, you are tasked with backing up and restoring a Docker swarm.

1.  Use  `cat`  on the file  `swarm-token.txt`  to show the join token for your worker nodes.
2.  Add 2 worker nodes to the swarm.
3.  Scale the backup service up to 3 replicas.
4.  Stop the Docker service on the master node and use  `tar`  to compress the swarm directory.
5.  Use  `scp`  to securely copy the swarm tarball to  `/home/cloud_user`  on the backup master node.
6.  Use  `tar`  to extract the tarball.
7.  Stop the Docker service, restore the swarm directory, and start up the Docker service.
8.  Force the swarm to reinitialize a new cluster.
9.  Add the two worker nodes to the swarm.
