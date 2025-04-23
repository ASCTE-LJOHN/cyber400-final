# installs docker on Ubuntu 22.04
# src: https://docs.docker.com/engine/install/ubuntu/

# test if docker compose is installed
sudo docker compose version || export no_docker=1
echo "no_docker value = " $no_docker
if [ $no_docker -eq 1 ]; then
    # install docker-ce prerequisite
    sudo apt update
    sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu jammy stable"
    sudo apt update
    sudo apt install docker-ce -y
    sudo usermod -aG docker vagrant
    # install docker-compose
    curl -SL https://github.com/docker/compose/releases/download/v2.20.3/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
else
    echo "docker compose already installed. Moving on..."
fi

## alternative
# install docker standalone (not particularly "safe")
# curl -fsSL https://get.docker.com -o ~/get-docker.sh
# sh ~/get-docker.sh
