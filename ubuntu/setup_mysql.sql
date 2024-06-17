-- to start mysql as root:
-- sudo mysql -u root

-- not advised to run this script directly

-- to create a new user:
CREATE USER 'potatomi'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON *.* TO 'potatomi'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;

-- to change password:
ALTER USER 'potatomi'@'localhost' IDENTIFIED BY 'password';

-- to login as new user:
-- mysql -u potatomi -ppassword

-- header for database creation:
CREATE DATABASE IF NOT EXISTS db_name;
USE db_name;

-- '%'@'localhost' will not work
GRANT ALL PRIVILEGES ON db_name.* TO 'potatomi'@'localhost';
FLUSH PRIVILEGES;
