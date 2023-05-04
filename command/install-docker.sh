set -euf -o pipefail

DOCKER_USER=master

# Install dependencies
sudo yum update && sudo yum install -y yum-utils

sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

# Install Docker CE
sudo yum install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Docker Start
sudo systemctl start docker && sudo systemctl enable docker

# Use Docker without root
sudo usermod -aG docker $DOCKER_USER
