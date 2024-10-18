SELECT *
FROM orders
JOIN customers
	ON orders.customer_id= customers.customer_id;
    
    
    
SELECT order_id, address
FROM orders
JOIN customers
	ON orders.customer_id= customers.customer_id;
    
    
    
SELECT c.first_name,p.product_id, p.name
FROM orders o 
JOIN customers c
	ON o.customer_id= c.customer_id
    JOIN order_items i
			ON o.order_id=i.order_id
            JOIN products p
				ON i.product_id= p.product_id;
                
SELECT order_id,c.customer_id,address
FROM orders o
JOIN customers c
	ON o.customer_id=c.customer_id
WHERE order_id > 5
ORDER BY order_id
LIMIT 2,5;


SELECT *
FROM orders , customers -- cartesian product
-- WHERE orders.customer_id= customers.customer_id


SELECT *
FROM orders , customers 
WHERE orders.customer_id= customers.customer_id OR orders.customer_id != customers.customer_id


SELECT order_id, order_date,c.customer_id,address
FROM orders o, customers c
WHERE o.customer_id = c.customer_id
ORDER BY order_date DESC

SELECT c.customer_id, c.first_name,c.phone
FROM orders o, customers c
WHERE o.customer_id != c.customer_id

SELECT *
FROM orders o
JOIN customers c
	ON o.customer_id = c.customer_id;
    
    
SELECT c.customer_id, c.first_name,c.phone
FROM orders o
JOIN customers c
	ON o.customer_id = c.customer_id
-- WHERE c.customer_id != o.customer_id