USE `LibraryManagement`;

INSERT INTO `authors` (`author_name`) 
VALUES ('Yuval Noah Harari'), ('Frank Herbert');

INSERT INTO `genres` (`genre_name`) 
VALUES ('Nonfiction'), ('Science fiction');

INSERT INTO `books` (`title`, `publication_year`, `author_id`, `genre_id`) 
VALUES 
('Sapiens', 2011, 1, 1), 
('Dune', 1965, 2, 2);

INSERT INTO `users` (`username`, `email`) 
VALUES 
('ivan_petrenko', 'ivan.petrenko@example.com'), 
('oksana_melnyk', 'oksana.melnyk@example.com');

INSERT INTO `borrowed_books` (`book_id`, `user_id`, `borrow_date`, `return_date`) 
VALUES 
(1, 1, '2024-09-15', '2023-09-25'), 
(2, 2, '2023-09-01', NULL);