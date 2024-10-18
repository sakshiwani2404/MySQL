
SELECT * 
FROM customers
-- WHERE state='FL'
ORDER BY points, first_name;


SELECT CURDATE(); -- SELECT current_date()
SELECT CURTIME();  -- SELECT current_time()


SELECT CURDATE()+1; 
SELECT CURTIME()+1;

SELECT current_timestamp();

SELECT datediff('1950-1-26','1947-8-15') /365;
SELECT DATEDIFF('2024-9-13 09:13:55', '2004-4-24 10:8:32')/365;

SELECT date_format(convert((SELECT curdate()),char),'%Y');
SELECT date_format(convert((SELECT curdate()),char),'%i');
SELECT date_format(convert((SELECT curdate()),char),'%m');


SELECT date_format('2024-9-13','%a '); -- day of that date
SELECT DATE_FORMAT('2024-9-13', '%b '); -- month for that date
SELECT date_format('2024-9-13','%c'); -- month number 9

SELECT date_format('2024-9-13','%D '); -- series count of date 13th
SELECT date_format('2024-9-13','%e '); -- date of that date 13
SELECT date_format('2024-9-13','%d '); -- date of the date 13
SELECT date_format('2024-9-13','%y'); -- year of that date only 24 visible
SELECT date_format('2024-9-13','%Y '); -- complete year of that date in 2024 format

SELECT date_format('2024-9-13 15:05:55','%h'); -- hours in 12hr format
SELECT date_format('2024-9-13 15:05:55','%H'); -- hours in 24 hr format
SELECT date_format('2024-9-13 15:05:55','%i'); -- minutes from the timestamp
SELECT date_format('2024-9-13 15:05:55','%I'); -- same as of small h and also small l for hrs in 12hr form
SELECT date_format('2024-9-13 15:05:55','%s'); -- seconds denoting



