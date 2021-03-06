#!/bin/bash -x
CONFIG_FILE="/etc/isitfoggy.conf"
source $CONFIG_FILE
systemctl stop nginx
certbot certonly -d $ORIGIN_FQDN --standalone --agree-tos -n -m $CLOUDFLARE_EMAIL
systemctl start nginx
