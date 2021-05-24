# Mail Service for GNUWeeb

## Requirements
- PHP 7.4+
- MySQL 5.5+

## Setup Instructions
```sh
sudo apt-get install mysql-server php7.4 -y;

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
