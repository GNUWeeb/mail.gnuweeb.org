# Mail Service for GNUWeeb

## Requirements
- PHP 7.4+
- MySQL 5.5+

## Basic Setup
```sh
sudo apt-get install mysql-server php7.4 -y;
mysql --version; # Check your version number
git clone https://github.com/GNUWeeb/mail.gnuweeb.org;
cd mail.gnuweeb.org;
```

#### Setup User and Database for MySQL 8
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


#### Setup User and Database for MySQL 5.x
```sh
# Edit <username> and <password> with anything you want.

sudo mysql -e "GRANT ALL PRIVILEGES ON *.* TO '<username>'@'%' IDENTIFIED BY '<password>';";
sudo mysql -e "CREATE DATABASE gnuweeb;";

# Make sure you have cd'ed to mail.gnuweeb.org;
sudo mysql gnuweeb < database.sql;
```


# Maintainer
- Ammar Faizi (@ammarfaizi2)

# License
This project is licensed under the GNU GPL 2.0 license.
