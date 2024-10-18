
DELETE FROM order_items
WHERE product_id=(SELECT product_id FROM products WHERE name='Foam Dinner Plate');
ROLLBACK;

/*
SELECT state,count
FROM customers c
JOIN customers o
WHERE c.state= o.state 
count+=1;
*/

SELECT *
FROM invoices
WHERE client_id= (SELECT client_id FROM clients WHERE NAME LIKE 'Yadel');


-- Aggregate Functions 
SELECT COUNT(*) Total_Customers
FROM customers;


SELECT SUM(payment_total) total_after_june2017
FROM invoices 
WHERE payment_date > '2017-6-1';

SELECT SUM(payment_total) total_before_june2019
FROM invoices 
WHERE payment_date < '2019-6-1';
-- max min avg