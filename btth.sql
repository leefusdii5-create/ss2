CREATE DATABASE ss2;
use ss2;

CREATE TABLE books(
book_id Char(5) PRIMARY KEY,
title VARCHAR(200) NOT NULL,
quantity int check (quantity <= 0),
rental_price decimal(10, 2) default 5000
);
ALTER  TABLE books
ADD COLUMN book_date DATE;

CREATE TABLE borrow_book(
borrow_id INT AUTO_INCREMENT PRIMARY KEY,
book_id CHAR(5),
borrow_date DATE DEFAULT (CURRENT_DATE),
FOREIGN KEY (book_id) REFERENCES books(book_id)
);

ALTER TABLE books
DROP COLUMN date_input;

AlTER TABLE borrow_book
ADD COLUMN borrow_date DATETIME DEFAULT CURRENT_timestamp;


-- dùng lệnh change hoặc rename
-- caapj nhaathj cột dữ liệu borrow_date