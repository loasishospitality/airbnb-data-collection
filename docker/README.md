# Run script(s) with Docker (master)

1. Install Docker from [here](https://docs.docker.com/install/)
2. Install Docker Compose from [here](https://docs.docker.com/compose/install/)
3. Start the containers from the root of the cloned project: 

   ```console
   cd docker
   docker-compose up
   ```
4. To get a shell on the collector container:

   ```console
   docker exec -it airbnbcollector /bin/bash
   ```
   The python scripts from the projects are located in /collector

   To get a shell on the db container:

   ```shell
   docker exec -it airbnbcollector-db /bin/bash
   ```
   In this shell you can query the database. The database is initialized on container startup.

   For the scripts you can run, please check [main documentation](../README.md)
   
   
# Container Set running on Alpine (dev-alpine)

The Collector container is built locally for ease of development while the db is from Docker Repository

Step 1 and 2 are the same

3. You need to add your Airbnb Api Reference in the config :

   ```console
   cp docker/configs/docker.config.example docker/configs/docker.config
   ```
   Then Add your Api Reference in docker.config

4. Build Collector container and start the containers from the root of cloned project:

   ```console
   docker-compose up
   ```
   
5. To get a shell on the collector container:
   ```console
   docker exec -it airbnbcollector /bin/sh
   ```
   Here you can access Toms Lee scripts : [main documentation](../README.md)
   
   Note : /bin/bash is /bin/sh in Alpine linux
   
   To get a shell on the db container:

   ```shell
   docker exec -it airbnbcollector-db /bin/sh
   ```
