-- LEFT JOIN

SELECT first_name, last_name, order_date, amount
FROM customers LEFT JOIN orders
ON orders.customer_id = customers.id;



SELECT first_name, last_name, order_date, amount
FROM orders LEFT JOIN customers
ON orders.customer_id = customers.id;


SELECT first_name, last_name, IFNULL(SUM(amount), 0) AS money_spent
FROM customers LEFT JOIN orders
ON orders.customer_id = customers.id
GROUP BY first_name, last_name;