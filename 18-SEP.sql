SELECT * 
FROM products
WHERE quantity_in_stock >= 50;

SELECT * 
FROM products
WHERE quantity_in_stock =50;

SELECT * 
FROM products
WHERE unit_price > 2.0;

SELECT product_id, name ,unit_price
FROM products;

SELECT product_id, name , unit_price * 2 new_price
FROM products;

SELECT product_id, name ,unit_price, unit_price * 1.2 new_price
FROM products;

SELECT customer_id ,first_name , points , points /100  "Discount in $"
FROM customers;

SELECT customer_id ,first_name , points , points /100 Discount
FROM customers
WHERE points /100 >= 10.5;

SELECT customer_id ,first_name , points , points /100  AS discount
FROM customers
WHERE discount >= 10.5;  -- error must be solved 

SELECT * 
FROM customers 
WHERE state = 'FL';

SELECT * 
FROM customers 
WHERE state = 'FL' AND points > 300;

SELECT * 
FROM customers 
WHERE state = 'FL' OR points > 1000;

SELECT * 
FROM customers 
WHERE state = 'FL' OR state = 'TX' or state = 'VA';

SELECT * 
FROM customers 
WHERE state IN  ('FL' , 'VA' , 'TX');

SELECT * 
FROM customers 
WHERE points BETWEEN 1000 AND 2000;





