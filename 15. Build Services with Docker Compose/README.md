## Description

For the last six months, the Acme Anvil Corporation has been migrating some of their bare metal infrastructure to Docker containers. Your team wants to find an easier way to deploy applications that consist of multiple containers and has decided to use Docker Compose. You have been tasked with setting up an internal blog so the team can write technical articles. This blog will consist of two services: a Ghost Blog service and a MySQL service. Both services will use volumes for persistent storage.

## Additional Information and Resources

In this hands-on lab, we will create a Ghost Blog service using Docker Compose.

1.  Log in to the live environment and  `sudo`  to  `root`.
2.  Create a Docker Compose file in the root directory of your live environment. You will create two services: a Ghost Blog service and a MySQL service.
3.  Set the Compose version to  `3`.
4.  Create your first service called  `ghost`.
5.  Use the  `ghost:1-alpine`  image.
6.  Call the container  `ghost-blog`.
7.  You will use five environment variables:
    -   Set  `database__client`  to  `mysql`.
    -   Set  `database__connection__host`  to  `mysql`.
    -   Set  `database__connection__user`  to  `root`.
    -   Set  `database__connection__password`  to  `P4sSw0rd0!`
    -   Set  `database__connection__database`  to  `ghost`.
8.  Create a volume called  `ghost-volume`  and map it to  `/var/lib/ghost`.
9.  Map port 80 on the host to port 2368 on the container.
10.  The  `ghost_blog`  container will be dependent on the  `mysql`  container.
11.  Make sure that the container always restarts.
12.  Create a second service called  `mysql`.
13.  Use the  `mysql:5.7`  image.
14.  Name the container  `ghost-db`.
15.  You will add the following environment variable:
    -   Set  `MYSQL_ROOT_PASSWORD`  to  `P4sSw0rd0!`
16.  Create a volume called  `mysql-volume`  and map it to  `/var/lib/mysql`.
17.  Make sure that the container always restarts.
18.  Make sure that the two volumes are called  `ghost-volume`  and  `mysql-volume`.
19.  Execute a  `compose up`  and make sure to use the  `detached`  flag.
20.  Verify that your app is up and running.