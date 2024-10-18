SELECT*
FROM customers
WHERE NOT (birth_date > '1990-1-1' AND state ='FL' AND points>200) ;
-- WHERE birth_date <='1990-1-1' OR state!= 'FL' OR points <=200


-- display all the customer whose last name starts with 'B%
SELECT*
FROM customers;
-- WHERE last_name LIKE '%y' -- ends with  y
-- WHERE first_name LIkE '%R%'
-- WHERE last_name LIKE '%wide%'
-- WhERE last_name LIKE '______'
-- WHERE last_name LIKE '_a%'
-- WHERE last_name LIKE '__a%'
-- WHERE last_name LIKE '_____y%'
-- WHERE last_name LIKE '%a_'G


SELECT*
FROM customers
-- WHERE first_name SOUNDS LIKE 'clemmy'
-- WHERE last_name  SOUNDS LIKE 'roseberg'
WHERE first_name SOUNDS LIKE 'ileene'