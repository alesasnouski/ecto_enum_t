CREATE USER user identified by 'pass';

CREATE DATABASE db_0 CHARACTER SET utf8 COLLATE utf8_general_ci;

GRANT ALL PRIVILEGES ON db_0.* to user;