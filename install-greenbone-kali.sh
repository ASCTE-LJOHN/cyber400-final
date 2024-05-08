## Install Greenbone from scratch on Kali Linux
# source: https://greenbone.github.io/docs/latest/22.4/kali/index.html
# requires many hours of time to sync feeds

sudo apt update
sudo apt install gvm -y
sudo gvm-setup > gvm_passwd.txt
chmod -w gvm_passwd.txt
sudo gvm-check-setup
# sudo -E -u _gvm -g _gvm gvmd --user=admin --new-password=???

# sudo reboot now