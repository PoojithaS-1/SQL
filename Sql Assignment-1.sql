CREATE DATABASE ASSIGNMENT1;
USE ASSIGNMENT1;

CREATE TABLE ORDERS(
ORDER_ID INT AUTO_INCREMENT PRIMARY KEY,
PRODUCT_ID INT UNIQUE NOT NULL,
QUANTITY INT NOT NULL,
PRICE DECIMAL(10,2) 
);

INSERT INTO ORDERS(PRODUCT_ID,QUANTITY,PRICE) VALUES
(111,2,22.99),
(112,4,222.99),
(113,6,62.99),
(114,5,99.00),
(115,10,256.00);

SELECT * FROM ORDERS;

SELECT PRODUCT_ID,SUM(PRICE*QUANTITY) AS TOTAL_REVENUE FROM ORDERS GROUP BY PRODUCT_ID;

SELECT MIN(PRICE) FROM ORDERS;
SELECT MAX(PRICE) FROM ORDERS ;

CREATE TABLE PRODUCTS( 
PRODUCT_ID INT UNIQUE NOT NULL, 
PRODUCT_NAME VARCHAR(50) NOT NULL UNIQUE,  
PRICE DECIMAL(10,2) NOT NULL
); 

INSERT INTO PRODUCTS(PRODUCT_ID,PRODUCT_NAME,PRICE) VALUES
(111,'BOOK',222.99),
(112,'BIND',22.99),
(113,'BOTTLE',62.99),
(114,'SKETCH PENS',99.00),
(115,'WRITTING_PAD',256.00);

SELECT * FROM PRODUCTS;
SELECT AVG(PRICE) AS average_price_of_products FROM PRODUCTS;

CREATE TABLE ORDERS1(
ORDER_ID INT UNIQUE NOT NULL,
PRODUCT_ID INT UNIQUE NOT NULL,
CUSTOMER_ID INT NOT NULL
);

INSERT INTO ORDERS1 (ORDER_ID, PRODUCT_ID, CUSTOMER_ID)VALUES 
(1, 101, 1),
(2, 102, 2),
(3, 103, 1),
(4, 104, 3),
(5, 105, 4);

SELECT * FROM ORDERS1;

SELECT COUNT(distinct CUSTOMER_ID) FROM ORDERS1 ;

CREATE TABLE ORDERS2(
order_id INT AUTO_INCREMENT UNIQUE NOT NULL, 
order_date DATE NOT NULL,
total_price DECIMAL(10,2)
);
INSERT INTO ORDERS2(ORDER_DATE,TOTAL_PRICE)VALUES
("2024-05-12",33.33),
("2024-05-22",66.33),
("2024-06-11",50.00),
("2024-05-12",83.33),
("2024-06-11",30.00);

SELECT * FROM ORDERS2;

SELECT ORDER_DATE,COUNT(ORDER_ID)  FROM ORDERS2 GROUP BY ORDER_DATE;

CREATE TABLE CUSTOMERS( 
customer_id INT AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(50) NOT NULL, 
last_name VARCHAR(50) NOT NULL, 
email VARCHAR(60) UNIQUE , 
phone VARCHAR(50)UNIQUE NOT NULL,
age INT NOT NULL CHECK(AGE>=18)
);

INSERT INTO customers (customer_id, first_name, last_name, email, phone, age) VALUES 
(1, 'John', 'Doe', 'john.doe@example.com', '123-456-7890', 30),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '234-567-8901', 25),
(3, 'Alice', 'Johnson', 'alice.johnson@example.com', '345-678-9012', 28),
(4, 'Bob', 'Brown', 'bob.brown@example.com', '456-789-0123', 40),
(5, 'Charlie', 'Davis', 'charlie.davis@example.com', '567-890-1234', 22);

SELECT * FROM customers;

CREATE TABLE CATEGORIES(
CATEGORY_ID INT PRIMARY KEY,
CATEGORY_NAME VARCHAR(50));

INSERT INTO CATEGORIES(category_id, category_name)
VALUES 
(1, 'Electronics'),
(2, 'Furniture'),
(3, 'Clothing'),
(4, 'Books'),
(5, 'Toys');

SELECT * FROM CATEGORIES;

CREATE TABLE PRODUCTS1(
product_id INT PRIMARY KEY,
name VARCHAR(100) NOT NULL,
price DECIMAL(10, 2) NOT NULL,
stock INT NOT NULL CHECK (stock>=0),
category_id INT NOT NULL ,
FOREIGN KEY (category_id ) REFERENCES CATEGORIES(category_id)
);
INSERT INTO PRODUCTS1(product_id, name, price, stock, category_id)VALUES 
(101, 'Laptop', 1200.00, 10, 1), 
(102, 'Sofa', 800.00, 5, 2),     
(103, 'T-shirt', 20.00, 50, 3),   
(104, 'Novel', 15.00, 100, 4),   
(105, 'Action Figure', 25.00, 30, 5); 

SELECT * FROM PRODUCTS1;

CREATE TABLE ORDERS3(
order_id INT UNIQUE NOT NULL , 
customer_id INT NOT NULL,
quantity INT NOT NULL, 
total_price DECIMAL(10,2) NOT NULL
); 
INSERT INTO ORDERS3 (order_id, customer_id, quantity, total_price)VALUES
(1, 1, 2, 1200.00),  
(2, 2, 1, 400.00),   
(3, 3, 5, 2500.00),  
(4, 4, 3, 350.00),   
(5, 5, 4, 700.00);

SELECT * FROM ORDERS3;

SELECT * FROM ORDERS3 WHERE TOTAL_PRICE>500;

CREATE TABLE PRODUCTS4( 
product_id INT PRIMARY KEY, 
product_name VARCHAR(50) NOT NULL, 
price DECIMAL(10,2) NOT NULL
);
INSERT INTO PRODUCTS4 (product_id, product_name, price)VALUES
(1, 'Smartphone', 300.00),
(2, 'Headphones', 50.00),
(3, 'Tablet', 200.00),
(4, 'Laptop', 1000.00),
(5, 'Monitor', 150.00);

SELECT * FROM PRODUCTS4;

SELECT * FROM PRODUCTS4 WHERE PRICE BETWEEN 100 AND 500;

CREATE TABLE orders5 (
    order_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    product_id INT NOT NULL,
    total_price DECIMAL(10, 2) NOT NULL
);

INSERT INTO orders5 (order_id, customer_id, product_id, total_price)VALUES
(1, 1, 101, 1200.00), 
(2, 2, 102, 400.00),  
(3, 3, 103, 2500.00),  
(4, 4, 104, 350.00),  
(5, 5, 105, 700.00);  

SELECT * FROM orders5;

SELECT * FROM orders5 WHERE customer_id IN (1, 2, 3);

CREATE TABLE PRODUCT(
product_id INT PRIMARY KEY, 
name VARCHAR(50) NOT NULL, 
price DECIMAL(10,2) NOT NULL, 
stock INT NOT NULL
);

INSERT INTO PRODUCT(product_id, name, price, stock) VALUES (105, 'Smartwatch', 299.99, 50);

CREATE TABLE product1 (
    product_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    stock INT NOT NULL
);

INSERT INTO product1 (product_id, name, stock)VALUES
(101, 'Laptop', 50),
(102, 'Smartphone', 30),
(103, 'Tablet', 20),
(104, 'Headphones', 15),
(105, 'Monitor', 8),
(106, 'mouse', 5);

UPDATE product1 SET stock=75 where product_id=102;
SET SQL_SAFE_UPDATES=0;
select * from product1;

DELETE FROM product1 WHERE stock < 10;

select * from product1;

CREATE TABLE product3(
product_id INT primary key,
name VARCHAR(100) not null,
price DECIMAL(10,2),
stock INT NOT NULL check (stock >= 0)
);

CREATE TABLE order1 (
order_id INT UNIQUE NOT NULL, 
total_price DECIMAL(10,2)
);
SELECT * FROM ORDER1;

ALTER TABLE order1 ADD COLUMN delivery_date DATE;
 
SELECT * FROM ORDER1;

CREATE TABLE reviews (
    review_id INT PRIMARY KEY,
    product_id INT,
    customer_id INT,
    rating INT CHECK (rating BETWEEN 1 AND 5),  -- Assuming a rating scale of 1 to 5
    comment TEXT
);

INSERT INTO reviews (review_id, product_id, customer_id, rating, comment)
VALUES
(1, 101, 1, 5, 'Excellent product! Highly recommend.'),
(2, 102, 2, 4, 'Very good quality, but a bit pricey.'),
(3, 103, 3, 3, 'Average experience, nothing special.');

DROP TABLE reviews;







 