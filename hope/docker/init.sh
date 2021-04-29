#!/bin/bash
/usr/bin/mysqld_safe  &
sleep 5

mysql -u root -e "CREATE DATABASE hope"
mysql -u root -e "CREATE USER dataturks@'%' IDENTIFIED BY '12345';"
mysql -u root -e "GRANT SELECT, INSERT, UPDATE, DELETE ON hope.* TO dataturks@'%';FLUSH PRIVILEGES;"
mysql -u root hope < ./mysqlInit.sql
