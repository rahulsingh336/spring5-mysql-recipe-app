## Use to run mysql db docker image, optional if you're not using a local mysqldb
## docker run --name mysqldb -p 3306:3306 -e MYSQL_ALLOW_EMPTY_PASSWORD=yes -d mysql

# connect to mysql and run as root user
#Create Databases
CREATE DATABASE rs_dev;
CREATE DATABASE rs_prod;

#Create database service accounts
CREATE USER 'rs_dev_user'@'10.157.136.209' IDENTIFIED BY 'rs';
CREATE USER 'rs_prod_user'@'10.157.136.209' IDENTIFIED BY 'rs';
CREATE USER 'rs_dev_user'@'%' IDENTIFIED BY 'rs';
CREATE USER 'rs_prod_user'@'%' IDENTIFIED BY 'rs';

#Database grants
GRANT SELECT ON rs_dev.* to 'rs_dev_user'@'10.157.136.209';
GRANT INSERT ON rs_dev.* to 'rs_dev_user'@'10.157.136.209';
GRANT DELETE ON rs_dev.* to 'rs_dev_user'@'10.157.136.209';
GRANT UPDATE ON rs_dev.* to 'rs_dev_user'@'10.157.136.209';
GRANT SELECT ON rs_prod.* to 'rs_prod_user'@'10.157.136.209';
GRANT INSERT ON rs_prod.* to 'rs_prod_user'@'10.157.136.209';
GRANT DELETE ON rs_prod.* to 'rs_prod_user'@'10.157.136.209';
GRANT UPDATE ON rs_prod.* to 'rs_prod_user'@'10.157.136.209';
GRANT SELECT ON rs_dev.* to 'rs_dev_user'@'%';
GRANT INSERT ON rs_dev.* to 'rs_dev_user'@'%';
GRANT DELETE ON rs_dev.* to 'rs_dev_user'@'%';
GRANT UPDATE ON rs_dev.* to 'rs_dev_user'@'%';
GRANT SELECT ON rs_prod.* to 'rs_prod_user'@'%';
GRANT INSERT ON rs_prod.* to 'rs_prod_user'@'%';
GRANT DELETE ON rs_prod.* to 'rs_prod_user'@'%';
GRANT UPDATE ON rs_prod.* to 'rs_prod_user'@'%';