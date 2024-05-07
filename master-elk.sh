# Configure directory
cd /home/kali
chmod +x *.sh

# Install Docker Compose
DEBIAN_FRONTEND=noninteractive sudo ./install-docker-ubuntu.sh

# Create ELK stack containers
cd /home/kali/cyber400-final/elk
sudo docker compose up -d
sudo docker ps -a

# Install rsyslog
# sudo apt install rsyslog -y

# Configure rsyslog server

# Import logs into elasticsearch

# sudo reboot now