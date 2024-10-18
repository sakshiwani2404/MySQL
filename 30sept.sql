-- display first 3 loyal customers

SELECT * 
FROM customers
ORDER BY points DESC
LIMIT 3;

-- joins by default innner join 
SELECT * FROM orders
JOIN customers
	ON orders.customer_id = customers.customer_id;
    
    
    
SELECT order_id, first_name, customers.customer_id
FROM orders
JOIN customers
	ON orders.customer_id = customers.customer_id;

SELECT orders.*
FROM orders
JOIN customers
	ON orders.customer_id = customers.customer_id;
 
 
SELECT order_id, c.customer_id, address
FROM orders o 
JOIN customers c
	ON o.customer_id = c.customer_id;
    
SELECT *
FROM order_items o
JOIN products p
	ON o.product_id = p.product_id
	JOIN orders a
		ON o.order_id = a.order_id