SELECT *
FROM customers
WHERE last_name REGEXP 'y';   -- customers where last name has at least 1 y in it anywhere


SELECT *
FROM customers
WHERE last_name REGEXP 'm*';  -- 0 or more occurences of m

SELECT *
FROM customers
WHERE last_name REGEXP '(ay)*'; -- 0 or more occurences of ay together

SELECT *
FROM customers
WHERE last_name REGEXP '(ay)+';   -- positive closure of ay together for 1 or more occurenes

SELECT *
FROM customers
WHERE address LIKE '% ohio%' OR address LIKE '%circle%';

SELECT *
FROM customers
WHERE address LIKE '%circle%';

SELECT *
FROM customers
WHERE address REGEXP 'ohio|circle|avenue';  