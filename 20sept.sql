SELECT *
FROM customers;

SELECT *
FROM customers
WHERE points <  (SELECT max(points) FROM customers)
ORDER BY points DESC
LIMIT 1; 

SELECT *
FROM customers 
ORDER BY points DESC
limit 1 OFFSET 2; -- to get the 3rd highest value

SELECT *
FROM customers
ORDER BY points
LIMIT 5 OFFSET 5;

SELECT *
FROM customers
ORDER BY points 
LIMIT 5,5; -- same as above
