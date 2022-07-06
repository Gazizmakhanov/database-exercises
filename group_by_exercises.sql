USE employees;
SELECT *
FROM titles
LIMIT 10;
DESCRIBE titles;
-- 2
SELECT COUNT(DISTINCT(title))
FROM titles;
-- 7 unique titles

-- 3 
USE employees;
SELECT DISTINCT(last_name)
FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E'
GROUP BY last_name;

-- 4
SELECT DISTINCT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E'
GROUP BY first_name, last_name;
-- 846 unique combinations

-- 5
SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%'
GROUP BY last_name;
/*'Chleq'
'Lindqvist'
'Qiwen'*/

-- 6
SELECT last_name, count(last_name)
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%'
GROUP BY last_name;
/*'Chleq','189'
'Lindqvist','190'
'Qiwen','168'*/

-- 7
SELECT first_name, COUNT(first_name)
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY first_name;
/*'Vidya','232'
'Irena','241'
'Maya','236'*/

-- 8
SELECT LOWER(CONCAT(SUBSTR(first_name,1,1), SUBSTR(last_name, 1, 4), "_", SUBSTR(birth_date, 6,2), SUBSTR(birth_date, 3,2))) as username,


 COUNT((LOWER(CONCAT(SUBSTR(first_name,1,1), SUBSTR(last_name, 1, 4), "_", SUBSTR(birth_date, 6,2), SUBSTR(birth_date, 3,2))))) as username_num
FROM employees
GROUP BY username
HAVING username_num>1;
-- 13251











