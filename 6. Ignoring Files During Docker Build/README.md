## Description

### Ignoring Files During Docker Build

Greetings & welcome back to our next adventure! As the Radar Board (the official SpaceBones government tech team) works towards implementing a true CI/CD environment, there have been reports of random files, directories & other "errata" interrupting the Docker automation process.

## Additional Information and Resources

As our resident Docker expert, President Squawk & the Radar Board have requested your aid in "ignoring" a few configuration files in the  `~/content-dockerquest-spacebones/salt-example/salt-master/`  directory. Populate the included  `.dockerignore`  file to prevent  `docker build`  from including incorrect or unneeded files in the build. Once complete, only  `docker-entrypoint.sh`  should live on the new image.

Once you have populated  `.dockerignore`, build a new Docker container image named  `salt-master`  with the tag  `:deb`.