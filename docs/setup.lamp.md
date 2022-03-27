# Lamp Stack Setup

Install Apache HTTP Server

```bash
sudo apt install apache2
```

Install MariaDB Database Server

```bash
sudo apt-get install mariadb-server mariadb-client
```
Install PHP and dependencies

```bash
sudo apt install php libapache2-mod-php php-common php-mysql php-gmp php-curl php-intl php7.4-mbstring php-xmlrpc php-gd php-xml php-cli php-zip
```

Change ownership permissions

```bash
sudo chown -R blaze:backup /var/www/html
```

Download phpMyAdmin GUI for MariaDB repo inside /var/www/html/phpmyadmin

[phpMyAdmin website](https://github.com/phpmyadmin/phpmyadmin)

Configure Database Server

```bash
sudo mysql_secure_installation
```

```bash
mysql -u root -p
```
```sql
CREATE USER 'blaze'@'localhost' IDENTIFIED BY 'blaze';
GRANT ALL PRIVILEGES ON *.* TO 'blaze'@'localhost';
FLUSH PRIVILEGES;
```

```bash
service mysql restart
```

Grant project privileges

```bash
sudo chown www-data:www-data -R * /var/www/html/${DIRECTORY}
```
