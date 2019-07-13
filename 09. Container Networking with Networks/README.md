## Description

### Container Networking with Networks

Good news, cadet! Thanks to your hard work & dedication, combined with consistently high quality output, the Druidians have successfully scheduled the first delivery of emergency treat rations to SpaceBones! President Squawk, along with every hungry citizen of SpaceBones send their deepest gratitude.

But we're not quite done yet! To schedule the first treat transfer, SpaceBonians need your help with creating a telnet container running on a super-duper secret Docker network bridge created especially for secure SpaceBones-to-Droolidia communication.

## Additional Information and Resources

Using the details below, create a new Docker network named  `borkspace`  using the  `192.168.10.0/24`  network range, with the gateway IP address  `192.168.10.250`. Once the  `borkspace`  network is created, use it to launch a new app named  `treattransfer`  in  `interactive`  mode using the  `spacebones/nyancat:latest`. Once the container is running, you should see a live view of Droolidian cadets running to the rescue!