CREATE DATABASE ecommerce_books;
USE ecommerce_books;
CREATE TABLE books (
    Book_ID INT AUTO_INCREMENT PRIMARY KEY,
    Product_Name VARCHAR(255) NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    Rating INT NOT NULL,
    Availability VARCHAR(100),
    Category VARCHAR(100),
    UPC VARCHAR(50) NOT NULL UNIQUE,
    Number_of_Reviews INT DEFAULT 0,
    Description TEXT,
    Product_URL VARCHAR(500)
);
SHOW TABLES;
DESCRIBE books;
USE ecommerce_books;

SHOW VARIABLES LIKE 'secure_file_priv';
USE ecommerce_books;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/books_for_mysql.csv'
INTO TABLE books
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Product_Name, Price, Rating, Availability, Category, UPC, Number_of_Reviews, Description, Product_URL);
SELECT COUNT(*) AS Total_Books
FROM books;
SELECT * FROM books LIMIT 5;
SELECT Book_ID, Product_Name, Price, Rating, Category, UPC
FROM books
LIMIT 10;
