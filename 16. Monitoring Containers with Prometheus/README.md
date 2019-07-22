## Description

For the last six months, the Acme Anvil Corporation has been migrating some of their bare metal infrastructure to Docker containers. It’s time to implement some basic monitoring in the environment. You will handle this in two ways: using  `Docker stats`  and Prometheus. Your mission is to set up Prometheus and cAdvisor using Docker Compose.

You can get more information on Prometheus at  [prometheus.io](https://prometheus.io/).

## Additional Information and Resources

In this learning activity, you will monitor containers using  `Docker stats`, Prometheus, and cAdvisor.

#### Part 1: Using Prometheus

1.  Create a  `prometheus.yml`  file that contains the  `cadvisor`  job.
2.  Set the scrape interval to  `5 seconds`.
3.  Target  `cadvisor`  on port 8080.
4.  Create a Docker Compose file and use Version 3.
5.  The first service will be called  `prometheus`.
6.  Use  `prom/prometheus:latest`  for the image.
7.  Name the container  `prometheus`.
8.  Map port 9090 to 9090 on the container.
9.  Set the command to  `--config.file=/etc/prometheus/prometheus.yml`.
10.  Create a volume that maps  `prometheus.yml`  to  `/etc/prometheus/prometheus.yml`. Make the volume read-only.
11.  Make sure it depends on the cAvisor container.
12.  Create a second service called  `cadvisor`.
13.  Use  `google/cadvisor:latest`  for the image.
14.  Name the container  `cadvisor`.
15.  Map port 8080 to 8080 on the container.
16.  Create the following volumes:
    -   `/`  maps to  `/rootfs`  (make it read-only)
    -   `/var/run`  maps to  `/var/run`  (make it read-write)
    -   `/sys`  maps to  `/sys`  (make it read-only)
    -   `/var/lib/docker/`  maps to  `/var/lib/docker`  (make it read-only)
17.  Execute a  `docker-compose up`.
18.  Make sure the container is running in the background.

#### Part 2: Using  `Docker stats`

There are two containers already running in your live environment:  `nginx`  and  `redis`.

1.  Create a shell script in your  `root`  directory called  `stats.sh`.
2.  Make sure the script is executable.
3.  In the file, add a line that will execute the  `Docker stats`  command using the  `formatting`  flag with the name, ID, memory usage, and CPU percentage placeholders.
4.  Make sure the output is formatted as a table.
5.  Execute  `stats.sh`  to view the results.
6.  When you're finished, exit the results.
