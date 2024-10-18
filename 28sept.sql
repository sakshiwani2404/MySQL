SELECT *, points * 10 AS new_points
FROM customers
ORDER BY new_points;

SELECT *, points * 10 AS new_points
FROM customers
ORDER BY 10,2;


SELECT *, quantity * unit_price  total
FROM order_items
WHERE order_id = 2
ORDER BY total DESC;

