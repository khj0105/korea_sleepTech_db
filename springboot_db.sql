CREATE DATABASE IF NOT EXISTS `springboot_db`;

USE `springboot_db`;

-- test 테이블 --
CREATE TABLE IF NOT EXISTS test (
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL
);

SELECT * FROM test;

-- student 테이블 --
CREATE TABLE student (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE
);

SELECT * FROM student;