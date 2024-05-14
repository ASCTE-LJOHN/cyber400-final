# source: https://github.com/cytopia/docker-dvwa
# works for linux/arm64/v8

## Prerequisites
# clone cyber400-final
# make shell scripts executable

## Procedure
# Install docker & docker compose
cd ~
./install-docker-kali.sh

# Download and configure DVWA container
cd ~
git clone https://github.com/cytopia/docker-dvwa.git
cd docker-dvwa
sudo docker compose up -d