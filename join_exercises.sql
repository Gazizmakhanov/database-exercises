USE employees;

-- 2
SELECT d.dept_name as 'Department Name', CONCAT(e.first_name,' ',e.last_name) as 'Department Manager'
FROM employees as e
JOIN dept_manager
USING (emp_no)
JOIN departments as d
USING (dept_no)
WHERE to_date>CURDATE() AND gender='F';

-- 3
SELECT d.dept_name as 'Department Name', CONCAT(e.first_name,' ',e.last_name) as 'Department Manager'
FROM employees as e
JOIN dept_manager
USING (emp_no)
JOIN departments as d
USING (dept_no)
WHERE to_date>CURDATE() AND gender='F';

-- 4
-- Find the current titles of employees currently working in the Customer Service department.
SELECT t.title as 'Title', COUNT(t.emp_no)
FROM  titles as t
JOIN employees
USING (emp_no)
JOIN dept_emp
USING(emp_no)
JOIN departments
USING(dept_no)
WHERE t.to_date>CURDATE() AND dept_name = 'Customer Service'
GROUP BY title
ORDER BY title;

-- 5
SELECT CONCAT(first_name,' ',last_name) 'Name', salary 'Salary', dept_name 'Department Name'
FROM employees
JOIN dept_manager
USING(emp_no)
JOIN departments
USING (dept_no)
JOIN salaries
USING(emp_no)
WHERE dept_manager.to_date> CURDATE() AND salaries.to_date>CURDATE();


-- 6
SELECT d.dept_no, dept_name, COUNT(emp_no) as 'num_employees'
FROM dept_emp as d
JOIN employees
USING (emp_no)
JOIN departments
USING (dept_no)
WHERE CURDATE()<d.to_date
GROUP BY d.dept_no
ORDER BY dept_no;

-- 7
SELECT departments.dept_name, AVG(salaries.salary) average_salary
FROM dept_emp
JOIN departments
USING(dept_no)
JOIN salaries
USING(emp_no)
WHERE salaries.to_date>CURDATE() AND dept_emp.to_date>CURDATE()
GROUP BY dept_name
ORDER BY average_salary DESC
LIMIT 1;

-- 8 
SELECT first_name, last_name
FROM employees
JOIN salaries
USING(emp_no)
JOIN dept_emp
USING(emp_no)
JOIN departments
USING(dept_no)
WHERE dept_name='Marketing' AND dept_emp.to_date>CURDATE()
ORDER BY salary DESC
LIMIT 1;

-- 9

SELECT first_name, last_name, salary, dept_name
FROM employees
JOIN dept_manager
USING(emp_no)
JOIN salaries
USING(emp_no)
JOIN departments
USING(dept_no)
WHERE dept_manager.to_date>CURDATE()
ORDER BY SALARY DESC
LIMIT 1;

-- 10
SELECT departments.dept_name, ROUND(AVG(salaries.salary)) average_salary
FROM dept_emp
JOIN departments
USING(dept_no)
JOIN salaries
USING(emp_no)
GROUP BY dept_name
ORDER BY average_salary DESC;








