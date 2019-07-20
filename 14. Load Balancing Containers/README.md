## Description

For the last six months, the Acme Anvil Corporation has been migrating some of their bare metal infrastructure to Docker containers. The initial implementation was very basic and lacked any kind of load balancing. Your manager has tasked you with creating two proofs of concept. For the first proof of concept, you are to use Docker Compose to create an Nginx load balancer and three instances using your  `weather-app`  image. Nginx will use port 80 and send traffic to port 3000 on the  `weather-app`  containers. For the second proof of concept, you are to create a Docker Swarm service called  `nginx-app`  that has two replicas using the Nginx image. The service should be published to port 8080 on the host and target port 80 on the containers.

Additional Information and Resources

In this lab, you will load balance containers using two methods. First, you will use Nginx to load balance traffic to three  `weather-app`  containers. Next, you will use Docker Swarm to load-balance a pair of Nginx containers.

Log in to Swarm Server 1 and Swarm Server 2 and  `sudo su -`  to  `root`.

#### Part 1

We will be using Docker Compose to set up the load balancer and containers.

1.  On Swarm Server 1, in the  `root`  directory, navigate to  `lb-challenge`  and create the Docker Compose file.
2.  Set the Compose version to  `3.2`.
3.  Create three  `weather-app`  services:
    -   `weather-app1`
    -   `weather-app2`
    -   `weather-app3`
4.  The services should build the Dockerfile that is in the  `weather-app`  directory.
5.  All three should have  `tty`  set to  `true`.
6.  All three containers should be using the frontend network.
7.  Create a service called  `loadbalancer`.
8.  It should use the Dockerfile located in the  `load-balance`r directory.
9.  Set  `tty`  to  `true`.
10.  The port mapping should be set to 80 on the host and 80 on the container.
11.  The load balancer should be using the frontend network.

#### Create the Frontend Network

1.  In the  `load-balancer`  directory, there will be a file called  `nginx.conf`.
2.  Add the three  `weather-app`  services to the  `upstream`  section.
3.  In the  `server`  section, make sure it is listening on port 80.
4.  Set the  `server_name`  to  `localhost`.
5.  The location should be set to  `/`.
6.  The location should contain a proxy pass to  `localhost`.
7.  The proxy set header should be set to  `$host`.
8.  Execute a  `compose up`  and make sure to use the  `build`  and  `detached`  flags.
9.  Verify that your app is up and running.

#### Part 2

1.  In the  `root`  directory, use  `cat`  to retrieve the contents of  `swarm-token.txt`.
2.  Use the  `docker swarm join --token`  command from the output of the file to join Swarm Server 2 to the swarm.
3.  Create a service called  `nginx-app`.
4.  The published port should be 8080 and the target port should be 80 on the container.
5.  Make sure there are 2 replicas.
6.  Use the  `nginx`  image.
7.  Verify that your app is up and running.

