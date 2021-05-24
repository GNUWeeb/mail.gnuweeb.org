# Mail Service for GNUWeeb

## Requirements
- PHP 7.4+
- MySQL 5.5+

## Basic Setup
```sh
sudo apt-get install mysql-server php7.4 -y;
```

#### MySQL 8
```
# Edit <username> and <password> with anything you want.

sudo mysql -e "CREATE USER IF NOT EXISTS '<username>'@'%' IDENTIFIED BY '<password>';";
sudo mysql -e "SET PASSWORD FOR '<username>'@'%' = '<password>';";
sudo mysql -e "GRANT ALL ON *.* TO '<username>'@'%';";
```


# Maintainer
- Ammar Faizi (@ammarfaizi2)

# License
This project is licensed under the GNU GPL 2.0 license.
