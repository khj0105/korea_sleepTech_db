CREATE DATABASE IF NOT EXISTS `test-db`
DEFAULT CHARACTER SET utf8mb4 COLLATE UTF8mb4_general_ci;
USE `test-db`;

CREATE TABLE Restaurant(
 id BIGINT Primary Key Auto_Increment,
 name VARCHAR(255) NOT NULL,
 address VARCHAR(255),
 phoneNumber VARCHAR(255)
);

select * from `Restaurant`;

CREATE TABLE Menu(
 id BIGINT Primary Key Auto_Increment,
 name VARCHAR(255) NOT NULL,
 price Double NOT NULL,
 description VARCHAR(255),
 restaurant_id BIGINT,
 Foreign Key (restaurant_id) references `Restaurant`(id)
);

select * from `Menu`;