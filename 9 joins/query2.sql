-- To perform a (kind of useless) cross join:
-- SELECT * FROM customers, orders;



-- INNER JOIN

SELECT * FROM customers JOIN orders 
ON orders.customer_id = customers.id;

SELECT first_name, last_name, order_date, amount FROM customers JOIN orders 
ON orders.customer_id = customers.id;


SELECT first_name, last_name, SUM(orders.amount) AS total_amount
FROM customers JOIN orders
ON orders.customer_id = customers.id
GROUP BY first_name, last_name
ORDER BY total_amount;