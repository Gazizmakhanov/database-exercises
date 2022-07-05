USE employees;
DESCRIBE employees;
-- 2
SELECT *
FROM employees
WHERE first_name IN ( "Irena", "Vidya", "Maya")
ORDER BY first_name;
-- Irena Reutenauer is the first one on the list
-- Maya Zyda is the last one on the list

-- 3
SELECT *
FROM employees
WHERE first_name = "Irena" OR first_name = "Vidya" OR first_name = "Maya"
ORDER BY first_name, last_name;
-- Irena Action is the first one on the list
-- Maya Zidya is the last one on the list
-- 4
SELECT *
FROM employees
WHERE first_name = "Irena" OR first_name = "Vidya" OR first_name = "Maya"
ORDER BY last_name, first_name;
-- Irena Action is the first one list
-- Vidya Akiyama is the last one the list

-- 5
SELECT *
FROM employees
WHERE last_name LIKE "E%" and last_name LIKE "%E"
ORDER BY emp_no;
-- 899 employees
-- Tadafiro Erde 499648 is the first one
-- Ramzi Erde 10021 is the last one


-- 6
SELECT *
FROM employees
WHERE last_name LIKE "E%" and last_name LIKE "%E"
ORDER BY hire_date DESC;
-- Sergei Erde 233488 is the first on the list
-- Teiji Eldridge 67892 is the las on the list

-- 7
SELECT *
FROM employees
WHERE hire_date LIKE '199%' AND birth_date LIKE  '%-12-25'
ORDER BY hire_date DESC;
-- 362 employees returned
-- Khun Benini 33936 is the first one on the list
-- Gudjon Vakilli 451819 is the last one on the list





