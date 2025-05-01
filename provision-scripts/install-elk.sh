# runuser -u vagrant -- sudo apt install git -y
# runuser -u vagrant -- cd ~
# runuser -u vagrant -- git clone https://github.com/deviantony/docker-elk.git
# runuser -u vagrant -- cd ~/docker-elk
# runuser -u vagrant -- sudo docker compose up setup
# runuser -u vagrant -- sudo docker compose up -d
# default credentials are elastic:changeme
# docker exec -it docker-elk-elasticsearch-1 /bin/elasticsearch-reset-password -u elastic  # !not automated! Use in case password reset is needed (run as root).

runuser -u vagrant -- cd /home/vagrant
runuser -u vagrant -- cp /host-files/docker-compose.yml .
runuser -u vagrant -- sudo docker compose up -d
