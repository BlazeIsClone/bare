# Install Apache HTTP Server

sudo apt install apache2

# Install MariaDB Database Server

sudo apt-get install mariadb-server mariadb-client

# Install PHP and dependencies

sudo apt install php libapache2-mod-php php-common php-mysql php-gmp php-curl php-intl php7.4-mbstring php-xmlrpc php-gd php-xml php-cli php-zip

# Change ownership permissions

sudo chown -R blaze:backup /var/www/html

# Download phpMyAdmin GUI for MariaDB repo inside /var/www/html/phpmyadmin

https://github.com/phpmyadmin/phpmyadmin

# Configure Database Server

sudo mysql_secure_installation

mysql -u root -p

CREATE USER 'blaze'@'localhost' IDENTIFIED BY 'blaze';
GRANT ALL PRIVILEGES ON *.* TO 'blaze'@'localhost';
FLUSH PRIVILEGES;

service mysql restart

# Grant project privileges

sudo chown www-data:www-data -R * /var/www/html/${DIRECTORY}
