#!/bin/bash

curl -L "https://github.com/mplesha/NoviNano/releases/download/v1.0/20180706_novinano_ts_976c110733e7eff58704180706072907_archive.zip" -o /var/www/html/20180706_novinano_t
curl -L "https://github.com/mplesha/NoviNano/releases/download/v1.0/20180706_novinano_ts_976c110733e7eff58704180706072907_installer.php" -o /var/www/html/20180706_novinano

chown -R www-data:www-data /var/www/html

apache2-foreground
