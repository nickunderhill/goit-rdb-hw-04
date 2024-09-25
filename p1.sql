CREATE DATABASE IF NOT EXISTS `LibraryManagement`;
USE `LibraryManagement`;

CREATE TABLE IF NOT EXISTS `authors` (
  `author_id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `author_name` VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS `genres` (
  `genre_id` INT NOT NULL AUTO_INCREMENT  PRIMARY KEY,
  `genre_name` VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS `books` (
  `book_id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `title` VARCHAR(255) NOT NULL,
  `publication_year` YEAR NOT NULL,
  `author_id` INT NOT NULL,
  `genre_id` INT NOT NULL,
  FOREIGN KEY (`author_id`) REFERENCES `authors`(`author_id`),
  FOREIGN KEY (`genre_id`) REFERENCES `genres`(`genre_id`)
);

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `username` VARCHAR(255) NOT NULL,
  `email` VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS `borrowed_books` (
  `borrow_id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `book_id` INT NOT NULL,
  `user_id` INT NOT NULL,
  `borrow_date` DATE NOT NULL,
  `return_date` DATE NULL,
  FOREIGN KEY (`book_id`) REFERENCES `books`(`book_id`),
  FOREIGN KEY (`user_id`) REFERENCES `users`(`user_id`)
);