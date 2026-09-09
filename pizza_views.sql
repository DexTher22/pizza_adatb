

SELECT COUNT(customer_id) FROM orders
INNER JOIN customers ON orders.customer_id = customers.id
WHERE name = "Szende";

CREATE VIEW szende AS
SELECT COUNT(customer_id) FROM orders
INNER JOIN customers ON orders.customer_id = customers.id
WHERE name = "Szende";

SELECT * FROM szende;

-- összes rendelés ahova zsákos frodó szállít ki

CREATE VIEW zsakos AS
SELECT orders.date, orders.time, pizzas.name AS pizza_name, customers.name
FROM orders
INNER JOIN couriers ON orders.courier_id = couriers.id
INNER JOIN customers ON orders.customer_id = customers.id
INNER JOIN pizzas ON orders.pizza_id = pizzas.id
WHERE couriers.name = 'Zsákos Frodó';
