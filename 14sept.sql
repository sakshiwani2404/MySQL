SELECT * 
FROM customers
LIMIT 5;


SELECT first_name, last_name,state
FROM customers;

SELECT * 
FROM orders;

SELECT DISTINCT state FROM customers;
SELECT DISTINCT first_name,last_name FROM customers;

SELECT * FROM customers
WHERE customer_id=5;

SELECT * 
FROM customers
WHERE customer_id BETWEEN 2 AND 5;

SELECT *
FROM customers 
WHERE birth_date <'1975-1-1';

SELECT *
FROM customers
WHERE birth_date <= '1984-1-1';

SELECT *
FROM customers
WHERE ((DATEDIFF(current_date, birth_date)/365)>=40);


SELECT *
FROM customers
WHERE ((DATEDIFF('2024-9-14', birth_date)/365)>=40);

SELECT * FROM customers 
WHERE state='FL' && points < 1500; -- && and AND both works the same for and operation

SELECT * FROM customers
WHERE phone is NULL ;

SELECT * FROM customers
WHERE phone IS NOT NULL;

SELECT DISTINCT customer_id FROM orders;
SELECT * FROM orders;
SELECT * FROM orders WHERE 1 AND 10 - (DISTINCT customer_id);
