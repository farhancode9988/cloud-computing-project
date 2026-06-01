#!/bin/bash
# Update system repositories and install Nginx web server
apt-get update -y
apt-get install -y nginx

# Clear default Nginx web root files to prepare for new deployment
rm -rf /var/www/html/*
