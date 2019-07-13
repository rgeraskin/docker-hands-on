## Description

For the last six months, the Acme Anvil Corporation has been migrating some of their bare metal infrastructure to Docker containers. After the initial implementation, the team has decided to implement a better logging strategy by using a centralized syslog server.

You have been tasked with configuring syslog on one of the Docker instances. Next, you will configure Docker to use syslog instead of the JSON file log. Finally, you will test the configuration by spinning up two containers to test logging with syslog and a JSON file.

## Additional Information and Resources

Log in to your live environment and  `sudo`  to  `root`. Edit the syslog config file and uncomment the two lines under  `Provides UDP syslog reception`. Then, start the syslog service.

Configure Docker to use syslog as the default log driver and then start the Docker service.

Create two new containers using the httpd image. The first one will be called  `syslog-logging`  and will use syslog for the log driver. The second will be called  `json-logging`  and will use the JSON file for the log driver.

Verify that the  `syslog-logging`  container is sending its logs to syslog by running  `tail`  on the message log file. Then, verify that the  `json-logging`  container is sending its logs to the JSON file. Good luck!