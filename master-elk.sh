# source: https://www.elastic.co/guide/en/elastic-stack/8.13/installing-elastic-stack.html
# Configure directory
# cd /home/kali
# chmod +x *.sh

# Install Docker Compose
# DEBIAN_FRONTEND=noninteractive sudo ./install-docker-ubuntu.sh

# Create ELK stack containers
# cd /home/kali/cyber400-final/elk
# sudo docker compose up -d
# sudo docker ps -a

# Install Elastic Repository
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo gpg --dearmor -o /usr/share/keyrings/elasticsearch-keyring.gpg
sudo apt-get install apt-transport-https
echo "deb [signed-by=/usr/share/keyrings/elasticsearch-keyring.gpg] https://artifacts.elastic.co/packages/8.x/apt stable main" | sudo tee /etc/apt/sources.list.d/elastic-8.x.list
sudo apt-get update && sudo apt-get install elasticsearch

# Enable Elasticsearch upon reboot
sudo /bin/systemctl daemon-reload
sudo /bin/systemctl enable elasticsearch.service
sudo systemctl start elasticsearch.service


# Install rsyslog
# sudo apt install rsyslog -y

# Configure rsyslog server

# Import logs into elasticsearch

# sudo reboot now