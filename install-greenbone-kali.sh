# Install Greenbone from scratch on Kali Linux
# source: https://greenbone.github.io/docs/latest/22.4/kali/index.html

sudo apt update
sudo apt install gvm -y
DEBIAN_FRONTEND=noninteractive sudo gvm-setup > gvm_passwd.txt