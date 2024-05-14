# source: https://github.com/SamP10/VulnerableDockerfile
# works for linux/arm64/v8

## Prerequisites
# clone cyber400-final
# make shell scripts executable

## Procedure
# Install docker & docker compose
cd ~/cyber400-final
./install-docker-kali.sh

# Download VulnerableDockerfile project and run it
cd ~
git clone https://github.com/SamP10/VulnerableDockerfile
cd VulnerableDockerfile
git clone https://github.com/SamP10/UniVulnerableWebsite.git
mv UniVulnerableWebsite ./vulnContainer
cd vulnContainer

# Disconnect from public Wi-Fi
# Connect to private Wi-Fi

sudo docker compose up -d