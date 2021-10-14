#!/bin/bash

sudo yum update -y
sudo yum remove docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate docker-logrotate docker-engine -y
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install docker-ce docker-ce-cli containerd.io -y
sudo systemctl start docker
sudo systemctl enable docker

sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

sudo curl -L "https://github.com/mplesha/NoviNano/releases/download/v1.0/20180706_novinano_ts_976c110733e7eff58704180706072907_archive.zip" -o /var/www/html/20180706_novinano_ts_976c110733e7eff58704180706072907_archive.zip
sudo curl -L "https://github.com/mplesha/NoviNano/releases/download/v1.0/20180706_novinano_ts_976c110733e7eff58704180706072907_installer.php" -o /var/www/html/20180706_novinano_ts_976c110733e7eff58704180706072907_installer.php

sudo chown -R 33.33 /var/www/html

sudo docker-compose up -d
