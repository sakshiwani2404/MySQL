SELECT *
FROM customers
WHERE last_name REGEXP '[dilm]el'; -- del|iel|lel|mel this all combinations are searched in that column name

-- ^ starting with
-- $ ending with 
-- | multiple pattern 
-- * kleen closure (0 or more occurences)
-- + positive closure (1 or more ocurences)
-- [abcd]
-- [a-f]

SELECT * 
FROM customers
WHERE last_name REGEXP '^a[dpsl]';

SELECT * 
FROM customers
WHERE last_name REGEXP '^[btrm]'; -- starting with either b t r m

SELECT * 
FROM customers
WHERE last_name REGEXP '[dpsl]$'; -- ending with either d p s l 

SELECT * 
FROM customers
 WHERE first_name REGEXP '|';  -- all rows will come


SELECT * 
FROM customers
 WHERE first_name REGEXP '[|]'; -- string having or in it 
 
SELECT * 
FROM customers
 WHERE first_name REGEXP '[a-m]r';  
 
 -- display all the customers whose first_names are either elka or amber
 
 