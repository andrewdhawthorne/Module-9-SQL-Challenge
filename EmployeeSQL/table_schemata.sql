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