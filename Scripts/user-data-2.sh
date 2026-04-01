#!/bin/bash
sudo yum install nginx -y
sudo systemctl start nginx
sudo systemctl enable nginx
mkdir -p /usr/share/nginx/html/app2
echo "This is APP2" > /usr/share/nginx/html/app2/index.html
