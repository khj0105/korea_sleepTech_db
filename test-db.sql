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


-- 20250516 TEST
-- 회원 테이블
CREATE TABLE users (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    role VARCHAR(10) NOT NULL -- USER 또는 ADMIN
);

INSERT INTO users (role)
VALUES
	('USER'), ('ADMIN');

-- 게시글 테이블
CREATE TABLE posts (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    content TEXT NOT NULL,
    author_id BIGINT NOT NULL,
    FOREIGN KEY (author_id) REFERENCES users(id) ON DELETE CASCADE
);

-- 공지사항 테이블
CREATE TABLE notices (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    content TEXT NOT NULL,
    admin_id BIGINT NOT NULL,
    FOREIGN KEY (admin_id) REFERENCES users(id) ON DELETE CASCADE
);
