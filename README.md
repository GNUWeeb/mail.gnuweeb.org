# Mail Service for GNUWeeb

## Requirements
- PHP 7.4+
- MySQL 5.5+

## Setup Instructions (Ubuntu)
```sh
sudo apt-get install libphp7.4-embed php7.4 php7.4-bcmath php7.4-bz2 php7.4-cgi php7.4-cli php7.4-common php7.4-curl php7.4-dba php7.4-dev php7.4-enchant php7.4-gd php7.4-gmp php7.4-imap php7.4-interbase php7.4-intl php7.4-json php7.4-ldap php7.4-mbstring php7.4-mysql php7.4-opcache php7.4-readline php7.4-snmp php7.4-soap php7.4-sybase php7.4-tidy php7.4-xml php7.4-xmlrpc php7.4-xsl php7.4-zip -y

sudo apt-get install mysql-server -y;

# Check your MySQL version number
mysql --version;

# Don't start mysql when boot (for local development only)
sudo systemctl disable mysql;

# Start mysql
sudo systemctl start mysql;

git clone https://github.com/GNUWeeb/mail.gnuweeb.org;
cd mail.gnuweeb.org;
```

#### Setup (for MySQL 8)
```sh
# Edit <username> and <password> with anything you want.
sudo mysql -e "CREATE USER IF NOT EXISTS '<username>'@'%' IDENTIFIED BY '<password>';";
sudo mysql -e "SET PASSWORD FOR '<username>'@'%' = '<password>';";
sudo mysql -e "GRANT ALL ON *.* TO '<username>'@'%';";
sudo mysql -e "FLUSH PRIVILEGES;";
sudo mysql -e "CREATE DATABASE gnuweeb;";

# Make sure you have cd'ed to mail.gnuweeb.org;
sudo mysql gnuweeb < database.sql;
```


#### Setup (for MySQL 5.x and MariaDB)
```sh
# Edit <username> and <password> with anything you want.

sudo mysql -e "GRANT ALL PRIVILEGES ON *.* TO '<username>'@'%' IDENTIFIED BY '<password>';";
sudo mysql -e "FLUSH PRIVILEGES;";
sudo mysql -e "CREATE DATABASE gnuweeb;";

# Make sure you have cd'ed to mail.gnuweeb.org;
sudo mysql gnuweeb < database.sql;
```

### After the database is ready
```sh
# Make sure you have cd'ed to mail.gnuweeb.org;
cp -v config.example.php config.php;

# Fix the config file, adjust with your database username/password.
vim config.php;

# Start the PHP server.
php -S 0.0.0.0:8080 -t public/
# And ready to develop!
# Access from your browser http://127.0.0.1:8080
```


# Maintainer
- Ammar Faizi (@ammarfaizi2)


# License
This project is licensed under the GNU GPL 2.0 license.
