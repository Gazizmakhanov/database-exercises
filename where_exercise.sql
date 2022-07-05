USE employees;
DESCRIBE employees;
-- 2
SELECT *
FROM employees
WHERE first_name IN ( "Irena", "Vidya", "Maya");
-- 709 rows returned

-- 3
SELECT *
FROM employees
WHERE first_name = "Irena" OR first_name = "Vidya" OR first_name = "Maya";
-- 709 rows returned. It matches the Q2

-- 4
SELECT *
FROM employees
WHERE first_name = "Irena" OR first_name = "Vidya" OR first_name = "Maya"
AND gender="M";
-- 619 rows returned
-- 5
SELECT *
FROM employees
WHERE last_name LIKE "E%";
-- 7330 rows returned

-- 6
SELECT *
FROM employees
WHERE last_name LIKE "E%" or last_name LIKE "%E";
-- 30723 employees names star or end with 'E'
-- 24292 employees name end with 'E'

-- 7
SELECT *
FROM employees
WHERE last_name LIKE "E%" and last_name LIKE "%E";
-- 899 employee's names start and end with 'E'

-- 8
SELECT *
FROM employees
WHERE hire_date BETWEEN '1990-1-1' AND '1999-12-31';
-- 135214 employees were hired in 1990'savepoint

-- 9
SELECT *
FROM employees
WHERE birth_date LIKE '%-12-25';
-- 842 employees were born on Chirstmas

-- 10
SELECT *
FROM employees
WHERE hire_date LIKE '199%' AND birth_date LIKE '%-12-25';
-- 362 employees were hired in 1990's and were born on Christmas

-- 11

SELECT *
FROM employees
WHERE last_name LIKE '%q%';
-- 1873 employees have 'q' in their las names

-- 12
SELECT *
FROM employees
WHERE last_name LIKE "%q%" and last_name NOT LIKE "%qu%";
-- 547 employees have "q" but not "qu" in their last names



