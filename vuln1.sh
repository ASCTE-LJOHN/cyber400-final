# source: https://github.com/SamP10/VulnerableDockerfile
# works for linux/arm64/v8

## Prerequisites
# clone cyber400-final
# make shell scripts executable

## Procedure
# Install docker & docker compose
cd ~
./install-docker-kali.shell

# Download VulnerableDockerfile project and run it
cd ~
git clone https://github.com/SamP10/VulnerableDockerfile
cd VulnerableDockerfile/vulnContainer
sudo docker compose up -d