#!/bin/bash
sudo yum install nginx -y
sudo systemctl start nginx
sudo systemctl enable nginx
mkdir -p /usr/share/nginx/html/app1
echo "This is APP1" > /usr/share/nginx/html/app1/index.html
