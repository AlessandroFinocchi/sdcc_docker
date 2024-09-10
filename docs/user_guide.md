# User guide

## Start docker
To start the containerized application, run the following command:

    make docker_gen

## Stop docker
To stop and remove all the containers, run the following command

    make docker_clean

## Run the application on aws
To run on aws:
1. Run an instance from using Amazon Linux AMI and the "ec2_setup.sh" script as userdata
2. After instance is up-and-running, ssh into the instance with command

    ```ssh -i "path/to/key.pem" ec2-user@<instance-public-ipv4-dns>```

3. It is still downloading the necessary files, wait for it to finish
4. When it's done it will appear the directory "sdcc_docker" in the /home/ec2-user directory
5. Inside sdcc_docker run the following command to start the application:

    ``` sudo docker-compose up ```

## Note about certificates
If certificates are expired or not working, you can generate new ones by running the following command inside 
sdcc_host (or sdcc_registry):

    make cert

it will create the new certificates and keys on the cert directory of sdcc_host (or sdcc_registry), but remember to 
share that directory with sdcc_registry (or sdcc_host) because the two services need to share the same certificates.