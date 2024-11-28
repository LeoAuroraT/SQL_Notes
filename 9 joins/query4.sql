-- right join

SELECT first_name, last_name, order_date, amount
FROM customers RIGHT JOIN orders
ON orders.customer_id = customers.id;