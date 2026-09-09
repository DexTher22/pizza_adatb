DROP DATABASE IF EXISTS magyar_pizza_company;
CREATE DATABASE IF NOT EXISTS magyar_pizza_company;
USE magyar_pizza_company;

CREATE TABLE pizzas (
	id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(100),
	price INTEGER
);

CREATE TABLE couriers (
	id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(100),
	phone_number VARCHAR(15)
);

CREATE TABLE customers (
	id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(100),
	address VARCHAR(100)
);

CREATE TABLE orders (
	id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	date DATE,
	time DOUBLE,
	pizza_id INTEGER,
	courier_id INTEGER,
	customer_id INTEGER,
	FOREIGN KEY (pizza_id) REFERENCES pizzas(id),
	FOREIGN KEY (courier_id) REFERENCES couriers(id),
	FOREIGN KEY (customer_id) REFERENCES customers(id)
);

