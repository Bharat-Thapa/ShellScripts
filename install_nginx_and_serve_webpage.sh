#!/bin/bash

#Update System
sudo apt-get update -y

#Install Nginx
sudo apt-get install nginx -y

#Start And Enable Nginx
sudo systemctl start nginx
sudo systemctl enable nginx

#Add Webpage
echo "<h1>This is My Webpage</h1>"> index.html
cp index.html /var/www/html

