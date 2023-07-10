-- Create and view tables; import data from resource files  
CREATE TABLE departments (
	dept_no VARCHAR (10) NOT NULL PRIMARY KEY, 
	dept_name VARCHAR (20) NOT NULL
); 

SELECT * FROM departments;


CREATE TABLE employees (
	emp_no INTEGER NOT NULL, 
	dept_no VARCHAR (10) NOT NULL
); 

SELECT * FROM employees;


CREATE TABLE managers (
	dept_no VARCHAR (10) NOT NULL, 
	emp_no INTEGER NOT NULL PRIMARY KEY
); 

SELECT * FROM managers;


CREATE TABLE employee_info (
	emp_no INTEGER NOT NULL PRIMARY KEY, 
	emp_title_id VARCHAR (10) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR (30) NOT NULL,
	last_name VARCHAR (50) NOT NULL,
	sex VARCHAR (5) NOT NULL,
	hire_date DATE NOT NULL
);

SELECT * FROM employee_info;


CREATE TABLE salaries (
	emp_no INTEGER NOT NULL PRIMARY KEY, 
	salary INTEGER NOT NULL
); 

SELECT * FROM salaries;


CREATE TABLE titles (
	title_id VARCHAR (10) NOT NULL PRIMARY KEY, 
	title VARCHAR (20) NOT NULL
); 

SELECT * FROM titles;


-- 1
SELECT employee_info.emp_no, last_name, first_name, sex, salary 
FROM employee_info 
JOIN salaries
ON employee_info.emp_no = salaries.emp_no;

-- 2
SELECT first_name, last_name, hire_date 
FROM employee_info
WHERE hire_date BETWEEN '1986-01-01' AND '1987-01-01';

-- 3
SELECT managers.emp_no, managers.dept_no, dept_name, last_name, first_name
FROM managers
JOIN employee_info
ON managers.emp_no = employee_info.emp_no
JOIN departments
ON managers.dept_no = departments.dept_no
ORDER BY dept_no asc; 

-- 4 
SELECT employees.dept_no, employees.emp_no, last_name, first_name, dept_name
FROM employees
JOIN departments
ON employees.dept_no = departments.dept_no 
JOIN employee_info
ON employees.emp_no = employee_info.emp_no;

-- 5
SELECT first_name, last_name, sex 
FROM employee_info
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- 6
SELECT employees.emp_no, last_name, first_name
FROM employees
JOIN departments
ON employees.dept_no = departments.dept_no 
JOIN employee_info
ON employees.emp_no = employee_info.emp_no
WHERE dept_name = 'Sales';

-- 7
SELECT dept_name, employees.emp_no, last_name, first_name
FROM employees
JOIN departments
ON employees.dept_no = departments.dept_no 
JOIN employee_info
ON employees.emp_no = employee_info.emp_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';

-- 8 
SELECT last_name,
COUNT (last_name) AS last_name_frequency 
FROM employee_info
GROUP BY last_name
ORDER BY COUNT (last_name) desc; 