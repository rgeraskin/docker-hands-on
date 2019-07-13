## Description

#### Persistent Data Volumes

### Mission Accomplished!

Thanks to Droolidian graciousness & generosity, treats for the hungry SpaceBonians have been obtained - there's almost too much to handle! Greatful (& full, in general) SpaceBonians have once again raised their voices that President Squawk deliver a very special message to the wonderful person who lent a helping hand to reward deserving Good Boys & Girls. As a result, we have one more request of you, our star Docker expert.

## Additional Information and Resources

For your final task, create a new Docker volume named  `mission-status`  on your host machine.

Please note that as soon as you SSH into your docker server to start the activity, immediately sudo to become the root user in order to complete this activity.

Once the volume is created, use the docker cli to display the volume mountpoint on your server. Once you have found the mountpoint, drop to  `root`  to move contents found under  `content-dockerquest-spacebones/volumes/`  to local vol directory.

Once this is done, exit  `root`, then start a new container running on port  `:80`  using the base  `httpd`  image found in DockerHub, then visit the site in your browser!