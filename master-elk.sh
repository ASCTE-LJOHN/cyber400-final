cd /home/kali
curl https://raw.githubusercontent.com/ASCTE-LJOHN/cyber400-final/main/install-docker-ubuntu.sh -o install-docker-ubuntu.sh
chmod +x install-docker-ubuntu.sh
DEBIAN_FRONTEND=noninteractive sudo ./install-docker-ubuntu.sh
sudo reboot now