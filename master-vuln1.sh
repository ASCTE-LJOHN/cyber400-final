# Configure directory
cd /home/kali
chmod +x *.sh

# Install Docker Compose
DEBIAN_FRONTEND=noninteractive sudo ./install-docker-ubuntu.sh

# Install vulnerable services on Vulnerable Machine #1
# candidate: https://github.com/vulhub/vulhub/tree/639e32be6c0425b11d7d56594761c5e599a6a9d5/jumpserver/CVE-2023-42820
git clone https://github.com/vulhub/vulhub.git
cd vulhub/jumpserver/CVE-2023-42820
sudo docker compose up -d