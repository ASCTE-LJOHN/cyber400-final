# source: https://github.com/deviantony/docker-elk
# source: https://chabik.com/rsyslog-to-elasticsearch/
# prereq: system has internet connection for package download
# prereq: docker-compose has been installed

# (1) Download docker-elk github project
cd ~
git clone https://github.com/deviantony/docker-elk.git
cd ~/docker-elk

# (2) Create ELK containers
sudo docker compose up setup
sudo docker compose up
sudo docker ps -a

# (3) Install plugin to be able to receive from rsyslog
sudo apt install rsyslog rsyslog-elasticsearch -y

# (4) Copy 00-elasticsearch.conf to rsyslog config directory
sudo cp ~/cyber400-final/00-elasticsearch.conf /etc/rsyslog.d
sudo systemctl restart rsyslog

# sudo reboot now