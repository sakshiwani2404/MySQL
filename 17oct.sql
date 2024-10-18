CREATE TABLE invoices_archieves
SELECT * FROM invoices;

UPDATE invoices_archieves
SET payment_total= invoice_total* .5, payment_date=due_date
WHERE payment_date IS NULL;



UPDATE orders
SET comments ='VIP customer'
WHERE customer_id=
(SELECT customer_id FROM customers WHERE first_name='Ambur');



UPDATE orders
SET comments = 'Gold Customers'
WHERE customer_id IN -- bcs the subquery is returning multiple records so equal to dont work there so we use IN there
	(
		SELECT customer_id
        FROM customers
		WHERE points >=3000
	)


