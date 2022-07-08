USE employees;

-- 1
-- Find all the current employees with the same hire date as employee 101010 using a sub-query.
SELECT first_name, last_name
FROM employees
JOIN dept_emp
USING(emp_no)
WHERE hire_date = (SELECT hire_date
FROM employees
WHERE emp_no = 101010) AND to_date>CURDATE();

-- 2
-- Find all the titles ever held by all current employees with the first name Aamod
SELECT title
FROM titles
JOIN employees
USING(emp_no)
WHERE first_name IN (SELECT first_name
FROM employees
WHERE first_name = 'Aamod' AND to_date>CURDATE());

-- 3
-- How many people in the employees table are no longer working for the company? Give the answer in a comment in your code.

SELECT COUNT(*)-
(SELECT COUNT(*)
FROM employees
JOIN titles
USING(emp_no)
WHERE to_date>CURDATE())
FROM employees;
-- 59900

-- 4
-- Find all the current department managers that are female. List their names in a comment in your code.
SELECT first_name, last_name
FROM employees
WHERE emp_no IN
(SELECT emp_no
FROM employees 
JOIN dept_manager
USING(emp_no)
WHERE dept_manager.emp_no=employees.emp_no AND to_date>CURDATE()) AND gender='F'
/*'Hilary','Kambil'
'Isamu','Legleitner'
'Karsten','Sigstam'
'Leon','DasSarma'*/
;

-- 5
-- Find all the employees who currently have a higher salary than the companies overall, historical average salary
SELECT first_name, last_name
FROM employees
JOIN salaries
USING(emp_no)
WHERE salary>
(SELECT AVG(salary)
FROM salaries)
AND salaries.to_date>CURDATE();

-- 6
SELECT COUNT(salary)/(SELECT COUNT(salary)
FROM salaries
WHERE to_date>CURDATE())*100
FROM salaries
WHERE salary>=
((SELECT MAX(salary)
FROM salaries)-(SELECT STD(salary)
FROM salaries
WHERE to_date>CURDATE())) AND to_date>CURDATE();







