!#/usr/bin/env bash
sudo apt install curl openssh-server ca-certificates postfix
curl -sS https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | sudo bash
sudo apt install gitlab-ce
cd /etc/gitlab
sudo nano gitlab.rb
sudo apt install letsencrypt -y
letsencrypt certonly -d gitlab.hakase-labs.co
sudo letsencrypt certonly -d gitlab.hakase-labs.co
mkdir -p /etc/gitlab/ssl/
sudo mkdir -p /etc/gitlab/ssl/
sudo openssl dhparam -out /etc/gitlab/ssl/dhparams.pem 2048
sudo chmod 600 /etc/gitlab/ssl/*
cd /etc/gitlab/
sudo nano gitlab.rb
sudo gitlab-ctl reconfigure
htop
sudo apt-get htop
sudo apt-get install htop
