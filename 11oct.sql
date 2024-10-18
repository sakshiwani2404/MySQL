/*
																JOINS
																  |
			--------------------------------------------------------------------------------------------------------------------------------------------------------------
            |														|												|													|
		Implicit Join 											Explicit Join								Natural Join										Cross Join
			|														|												|									
		-------------------------						----------------------------------
        |						|						|								  |
	Inner Join 				Cross Join				Inner Join						Outer Join
																						|
																			---------------------------
                                                                            |			|				|
                                                                            Left		Right			Full
*/
-- on delete cascade - to delete foreign data when the primary key are deleted deleteing foreign keys also
SELECT * 
FROM customers,orders
WHERE customers.customer_id= orders.customer_id	;-- Inner Join	


SELECT * 
FROM customers,orders ; -- Cross Join	


SELECT 
	c.customer_id,
    first_name,
    order_id,
    order_date,
    address
FROM orders o
NATURAL JOIN customers c; -- control given to mysql as to find which one is matching column


SELECT *
FROM customers
CROSS JOIN orders;

SELECT 
	first_name, 
    last_name , 
    o.order_id, 
    o.order_date,address,
    p.name, 
    oi.quantity,
    s.name, 
    status, 
    total
FROM 
	customers c,
    orders o ,
    order_items oi,
    products p, 
    shippers s
WHERE 
	c.customer_id= o.customer_id
    AND o.order_id= oi.order_id
    AND oi.product_id= p.product_id
	AND 