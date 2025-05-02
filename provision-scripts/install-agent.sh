## Install elastic agent on ubuntu ARM64 host
# source: https://www.elastic.co/guide/en/fleet/current/install-standalone-elastic-agent.html
# source: https://www.elastic.co/downloads/elastic-agent

# (1) Download and extract the installation package.
curl -L -O https://artifacts.elastic.co/downloads/beats/elastic-agent/elastic-agent-9.0.0-linux-arm64.tar.gz
tar xzvf elastic-agent-9.0.0-linux-arm64.tar.gz

# (2) Modify settings in the elastic-agent.yml as required.
cd elastic-agent-9.0.0-linux-arm64
cp ../elastic-agent.yml .

# (5) From the agent directory, run the following commands to install Elastic Agent and start it as a service.
sudo ./elastic-agent install -n # yes then no


## uninstall instructions
# sudo elastic-agent uninstall
# sudo rm -rf /opt/Elastic/Agent
# sudo rm -rf /etc/elastic-agent