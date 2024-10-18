SELECT name
FROM shippers
UNION
SELECT first_name
FROM customers;  -- rows joining by union keyword


SELECT 
	order_id,
    order_date,
    "Delivered" Status
FROM orders
WHERE order_date < '2018-1-1'
UNION
SELECT 
	order_id,
    order_date,
    "Processing" Status
FROM orders
WHERE order_date >= '2018-1-1'
ORDER BY order_id;



SELECT 
	customer_id,
    first_name,
    points,
    "Bronze" Category
FROM customers
WHERE points<1000

UNION

SELECT 
	customer_id,
    first_name,
    points,
    "Silver" Category
FROM customers
WHERE points>1000 AND points<2000

UNION

SELECT 
	customer_id,
    first_name,
    points,
    "Gold" Category
FROM customers
WHERE points>2000
ORDER BY customer_id;



