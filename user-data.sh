#!/bin/bash

#!/bin/bash
sudo apt-get update
sudo apt-get install apache2 -y
sudo ufw allow 'Apache'
sudo systemctl stop apache2.service
sudo echo "<html><body><center><h1>Hello World of Ranjan</h1></center></body></html>" > index.html
sudo cp index.html /var/www/html/index.html
sudo systemctl start apache2.service
