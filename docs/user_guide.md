# User guide

To run the application, clone this repository and run the following commands at the root of the project:

To start the containerized application, run the following command:

``` make docker_gen ```

To stop and remove all the containers, run the following command

``` make docker_clean ```

To run on aws:
1. Run an instance from "sdcc_template"
2. After instance is up-and-running, ssh into the instance
3. It is still downloading the necessary files, wait for it to finish
4. When it's done it will appear the directory "sdcc_docker" in /home/ec2-user directory
5. Inside sdcc_docker run the following command to start the application:

``` sudo docker-compose up ```