# installs docker on Ubuntu 22.04
# src: https://docs.docker.com/engine/install/ubuntu/

# test if docker compose is installed
sudo docker compose version || export no_docker=1
echo "no_docker value = " $no_docker
if [ $no_docker -eq 1 ]; then
    # Add Docker's official GPG key:
    sudo apt update
    sudo apt install -y ca-certificates curl
    sudo install -m 0755 -d /etc/apt/keyrings
    sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
    sudo chmod a+r /etc/apt/keyrings/docker.asc

    # Add the repository to Apt sources:
    echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
    $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
    sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
    sudo apt update

    # Install Docker and docker compose
    sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
else
    echo "Docker compose already installed. Moving on..."
fi