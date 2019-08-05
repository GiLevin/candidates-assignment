#!/bin/bash
#add fix to exercise3 here
sudo sed -i 's/deny from all/Allow from all/' /etc/apache2/sites-enabled/000-default
sudo service apache2 restart
