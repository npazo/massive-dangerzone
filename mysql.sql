CREATE USER 'newuser'@'localhost' IDENTIFIED BY 'password';
CREATE USER 'vivek'@'%' IDENTIFIED BY 'my_Super_Secret_Password';

GRANT ALL PRIVILEGES ON * . * TO 'newuser'@'localhost';
GRANT type_of_permission ON database_name.table_name TO 'username'@'localhost';

FLUSH PRIVILEGES;

SHOW GRANTS FOR 'username'@'localhost';

select user from mysql.user;


