# source: https://www.elastic.co/guide/en/elastic-stack/8.13/installing-elastic-stack.html

# ensure system is configured to have IP = 192.168.0.199
# TODO

# Configure directory
# cd /home/kali
# chmod +x *.sh

# Install Docker Compose
# DEBIAN_FRONTEND=noninteractive sudo ./install-docker-ubuntu.sh

# Create ELK stack containers
# cd /home/kali/cyber400-final/elk
# sudo docker compose up -d
# sudo docker ps -a

# Install repository for elastic's packages
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo gpg --dearmor -o /usr/share/keyrings/elasticsearch-keyring.gpg
sudo apt install apt-transport-https -y
echo "deb [signed-by=/usr/share/keyrings/elasticsearch-keyring.gpg] https://artifacts.elastic.co/packages/8.x/apt stable main" | sudo tee /etc/apt/sources.list.d/elastic-8.x.list

# Install Elastic
sudo apt update && sudo apt install -y elasticsearch > elastic_pw.txt

# Enable elasticsearch upon reboot
sudo /bin/systemctl daemon-reload
sudo /bin/systemctl enable elasticsearch.service
sudo systemctl start elasticsearch.service

# Install Kibana
sudo apt update && sudo apt install -y kibana > kibana_pw.txt

# Reset elastic password
sudo /usr/share/elasticsearch/bin/elasticsearch-reset-password -b -u elastic --url https://localhost:9200 >> elastic_pw.txt
# Generate enrollment token for Kibana
sudo /usr/share/elasticsearch/bin/elasticsearch-reset-password -b -u kibana_system --url https://localhost:9200 >> kibana_pw.txt
sudo /usr/share/elasticsearch/bin/elasticsearch-create-enrollment-token -s kibana --force > kibana_token.txt
sudo /usr/share/kibana/bin/kibana-verification-code > k_verif_code.txt

#Enable kibana upon reboot
sudo /bin/systemctl daemon-reload
sudo /bin/systemctl enable kibana.service
sudo systemctl start kibana.service

# copy elasticsearch.yml file appropriately
# TODO
# copy kibana.yml file appropriately
# TODO

# CONFIGURE KIBANA by hand
# open Kibana on localhost:5601
# copy/paste kibana token from terminal file "kibana_token.txt"
# sudo /usr/share/kibana/bin/kibana-verification-code

# Install rsyslog
# sudo apt install rsyslog -y

# Configure rsyslog server

# Import logs into elasticsearch

# sudo reboot now