mysql -uroot -p -e "DELETE FROM mysql.user WHERE user=''; FLUSH PRIVILEGES";
mysql -uroot -p -e "GRANT ALL PRIVILEGES ON rmdb_schema.* TO 'rmdb'@'%' IDENTIFIED BY 'secret';"
