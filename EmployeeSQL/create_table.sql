-- Create Tables

CREATE TABLE departments (
	dept_no VARCHAR(55) PRIMARY KEY  NOT NULL,
    dept_name VARCHAR(55) UNIQUE  NOT NULL
 );
 
  CREATE TABLE titles (
     title_id VARCHAR(55) PRIMARY KEY NOT NULL,
     title VARCHAR(55) UNIQUE  NOT NULL
 );
 
 CREATE TABLE employees (
     emp_no INT PRIMARY KEY NOT NULL,
     emp_title_id VARCHAR(55) NOT NULL,
     FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
     birth_date DATE NOT NULL,
     first_name VARCHAR(55) NOT NULL,
     last_name VARCHAR(55) NOT NULL,
     sex VARCHAR(1) NOT NULL,
     hire_date DATE NOT NULL
 );
 
 CREATE TABLE dept_emp (
     emp_no INT NOT NULL,
     dept_no VARCHAR(55) NOT NULL,
     FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
     FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
 );

CREATE TABLE dept_manager (
     dept_no VARCHAR(55) NOT NULL,
     emp_no INT NOT NULL,
     FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
     FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
 );



CREATE TABLE salaries (
      emp_no INT NOT NULL,
      salary INT NOT NULL,
     FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
 );
 
--Import CSV files to the tables
 
-- check that imported data has loaded correctly

SELECT * FROM departments LIMIT 8;
SELECT * FROM titles LIMIT 8;
SELECT * FROM employees LIMIT 8;
SELECT * FROM dept_emp LIMIT 8;
SELECT * FROM dept_manager LIMIT 8;
SELECT * FROM salaries LIMIT 8;