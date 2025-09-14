CREATE SCHEMA qa_shop
    AUTHORIZATION postgres;


CREATE TABLE qa_shop.user (
	user_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email varchar(100) UNIQUE,
	date_of_birth DATE
);

INSERT INTO qa_shop.user (first_name, last_name, email, date_of_birth) VALUES ('Julian','Dunajski','jdunajski@interia.pl','1988-12-11');

INSERT INTO qa_shop.user 
	(first_name, last_name, email, date_of_birth) 
VALUES 
	('Gabriela','Rozycka','grozycka@wp.pl','1997-01-17'),
	('Rafał','Malik','rmalik@onet.pl','2004-03-20'),
	('Jolanta','Milkowska','jmilkowska@wp.pl','1965-09-16');


CREATE TABLE qa_shop.product (
	product_id SERIAL PRIMARY KEY,
	product_name VARCHAR(70),
	price DECIMAL(10,2),
	stock INT
);


INSERT INTO 
	qa_shop.product (product_name, price, stock) 
VALUES 
	('Biurko',399,11),
	('Krzesło stołowe',89.50,35),
	('Myszka komputerowa',35,50),
	('Laptop HP',2250,7)
;


CREATE TABLE qa_shop.order (
    order_id SERIAL PRIMARY KEY,
    user_id INT REFERENCES qa_shop.user(user_id),
    order_date DATE DEFAULT CURRENT_DATE
);


INSERT INTO 
	qa_shop.order(user_id, order_date) 
VALUES
	(1, '2025-09-04'),
	(2, '2025-08-21'),
	(1, '2025-07-22')
;


CREATE TABLE qa_shop.order_item (
    item_id SERIAL PRIMARY KEY,
    order_id INT REFERENCES qa_shop.order(order_id),
    product_id INT REFERENCES qa_shop.product(product_id),
    quantity INT
);


INSERT INTO 
	qa_shop.order_item (order_id, product_id, quantity) 
VALUES
	(1, 3, 2),
	(2, 2, 1),
	(3, 4, 3); 