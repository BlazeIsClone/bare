## WSL 2 Setup & Configuration

Install Windows Subsystem for Linux Version 2 from powershell

```powershell
wsl --install
install wsl 2
```

Install Linux distro

```powershell
wsl --install -d ubuntu
```

---


## Linux web server configuration

```bash
sudo apt-get update
```

Install HTTP server

```bash
install apache2
```

Configure privileges

```bash
sudo chown -R ${user}:${user}  /var/www/
```

Install current LTS PHP version & dependencies

```bash
sudo apt install php php-cli php-fpm php-json php-common php-mysql php-zip php-gd php-mbstring php-curl php-xml php-pear php-bcmath
```

Check PHP version

```bash
php --version
```

Restart Apache server

```bash
sudo service apache2 restart
```
