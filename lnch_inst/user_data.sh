 
#!/bin/bash
apt-get update
apt-get install nginx -y
echo "Hi now I am fly on $(hostname)">var/www/html/index.html
service nginx start
