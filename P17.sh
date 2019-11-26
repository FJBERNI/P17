#! /bin/bash

apt-get -y install apache2

sudo debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password password rootpass'

sudo debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password_again password rootpass'

sudo apt-get -y install mysql-server libapache2-mod-auth-mysql php5-mysql

sudo apt-get -y install php5 libapache2-mod-php5 php5-mcrypt

sudo mkdir /usr/share/adminer

sudo wget "http://www.adminer.org/latest.php" -O /usr/share/adminer/latest.php

sudo ln -s /usr/share/adminer/latest.php /usr/share/adminer/adminer.php

echo "Alias /adminer.php /usr/share/adminer/adminer.php" | sudo tee /etc/apache2/conf-available/adminer.conf

sudo a2enconf adminer.conf
