#!/bin/bash
# Move on desired directory
cd home/ec2-user/ || exit

# Update the package index and install required packages
sudo yum update -y
sudo yum install -y git make  # Install git and make

# Install Docker
sudo yum install docker -y
sudo systemctl start docker
sudo systemctl enable docker

# Install Docker Compose
# shellcheck disable=SC2046
sudo curl -L https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo sudo chmod +x /usr/local/bin/docker-compose

# Clone the GitHub repository containing the Makefile and Docker Compose file
git clone https://github.com/AlessandroFinocchi/sdcc_docker