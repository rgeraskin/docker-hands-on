## Description

### Optimizing Docker Builds with OnBuild

Onward, onward, On...Build? Inspired by the speed & resourcefulness that you have shown while completing various tasks, the Radar Board (The official SpaceBones government tech team) have now decided to begin to kinda work towards the eventual implementation of a full CI/CD pipeline environment... maybe. Don't worry, the majority of this task will land squarely on the shoulders of those noble ladies & gents, but -- based on President Squawk's sparking recommendation based on your performance thus far -- the Radar Board have requested your assistance with one task as they prepare a Saltstack backend.

## Additional Information and Resources

As the Radar Board prepares to integrate Saltstack with their environment using Docker images, they have requested your aid with preparing a parent image for what will eventually become the  `master`  node, using  `OnBuild`. Using the  `Dockerfile`  included under  `~/content-dockerquest-spacebones/salt-example/salt-master/`, create a new parent image for the  `salt-master`  build named  `tablesalt:master`  that executes all commands against  `docker-entrypoint.sh`  on any  _child_  images created from the parent image. Good luck!

Here is the content-dockerrequest repo:  [https://github.com/linuxacademy/content-dockerquest-spacebones](https://github.com/linuxacademy/content-dockerquest-spacebones)