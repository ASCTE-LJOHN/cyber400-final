# https://docs.docker.com/engine/install/debian/#install-using-the-repository
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl -y
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian \
  bookworm stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin


## OLD
# https://www.kali.org/docs/containers/installing-docker-on-kali/
# sudo apt update
# sudo apt install -y docker.io
# sudo systemctl enable docker --now
# sudo usermod -aG docker vagrant

# echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian bookworm stable" | sudo tee /etc/apt/sources.list.d/docker.list
# curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
# sudo apt update
# sudo apt install -y docker-ce docker-ce-cli containerd.io

## OLDER
# # install docker-ce prerequisite
# # sudo apt update
# # sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
# # curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
# # sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
# # sudo apt update
# # sudo apt install docker-ce -y
# # install docker-compose
# # curl -SL https://github.com/docker/compose/releases/download/v2.20.3/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose
# curl -SL https://github.com/docker/compose/releases/download/v2.27.0/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose
# sudo chmod +x /usr/local/bin/docker-compose
# # must perform a restart of the VM
# # sudo reboot now