## Install Greenbone from scratch on Kali Linux
# source: https://greenbone.github.io/docs/latest/22.4/kali/index.html
# requires many hours of time to sync feeds

sudo apt update
sudo apt install gvm -y
sudo gvm-setup > gvm_passwd.txt
chmod -w gvm_passwd.txt
sudo gvm-check-setup
# sudo -E -u _gvm -g _gvm gvmd --user=admin --new-password=???

# read -n 1 -p "== Change to private Wi-Fi and then press enter to continue. =="

# Allow greenbone to be accessible on all interfaces
sudo gvm-stop
sudo sed -i 's/127.0.0.1/0.0.0.0/' /usr/lib/systemd/system/greenbone-security-assistant.service
sudo systemctl daemon-reload
sudo gvm-start

# sudo reboot now