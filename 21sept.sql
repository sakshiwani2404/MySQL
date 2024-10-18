SELECT * 
FROM customers;

SELECT *
FROM customers
WHERE birth_date between '1990-1-1' AND '2000-12-31'   -- customers from 19th century
ORDER BY birth_date;
 
SELECT * FROM sql_store.order_items;

SELECT *,unit_price*quantity total
FROM order_items
WHERE unit_price*quantity>12; 