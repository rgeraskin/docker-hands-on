## Description

### Creating Data Containers

Welcome back, brave adventurer! As we approach the end of our quest to supply the nation of SpaceBones with much-needed treats, there is yet another challenge that can only be solved with your extensive Docker expertise. Now that first contact via SpaceBones: The Website has been confirmed, we now need your help to prepare SpaceBones infrastructure not only to receive, but retain any response from Droolidian government.

## Additional Information and Resources

After consulting with the Radar Board (The official SpaceBones technology team), we have decided the best option for sharing data between several containers will be Docker data containers. As our resident Docker expert, we are counting on you to create a data container running the  `training/postgres`  image (for our purposes, name that data container 'boneyard'), then mount the data container on three app containers (also running  `training/postgres`) with the following names:

-   cheese
-   tuna
-   bacon

Good luck, brave one! We are rooting for you!