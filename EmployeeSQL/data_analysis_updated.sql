--Data Analysis
--List the employee number, last name, first name, sex, and salary of each employee.

select e.emp_no, 
	e.last_name, 
	e.first_name, 
	e.sex, 
	s.salary
from employees as e
join salaries as s 
	on e.emp_no = s.emp_no;

--List the first name, last name, and hire date for the employees who were hired in 1986.

select first_name, 
	last_name, 
	sex, 
	hire_date
from employees
where hire_date between '1986-01-01' and '1986-12-31';


--List the manager of each department along with their department number, department name, employee number, last name, and first name.

select 
	m.dept_no,
	d.dept_name,
	m.emp_no, 
	e.last_name,
	e.first_name
from dept_manager as m
join departments as d 
	on m.dept_no = d.dept_no
join employees as e 
	on e.emp_no = m.emp_no;	

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

select 
	m.dept_no,
	m.emp_no, 
	e.last_name,
	e.first_name,
	d.dept_name
from dept_manager as m
join departments as d 
	on m.dept_no = d.dept_no
join employees as e 
	on e.emp_no = m.emp_no;
	
SELECT DISTINCT ON (e.emp_no) e.emp_no, e.last_name, e.first_name,d.dept_name
FROM employees AS e
LEFT JOIN dept_emp AS de
ON e.emp_no = de.emp_no
INNER JOIN departments AS d
ON de.dept_no = d.dept_no
ORDER BY e.emp_no;

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

SELECT first_name, 
	last_name, 
	sex 
FROM employees
where first_name = 'Hercules' 
and  last_name like 'B%';

--List each employee in the Sales department, including their employee number, last name, and first name.

select e.emp_no, 
	e.last_name, 
	e.first_name
from employees as e
join dept_emp as junct 
	on e.emp_no = junct.emp_no
join departments as d 
	on junct.dept_no = d.dept_no
where d.dept_name = 'Sales';

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

select e.emp_no, 
	e.last_name, 
	e.first_name, 
	d.dept_name
from employees as e
join dept_emp as junct 
	on e.emp_no = junct.emp_no
join departments as d 
	on junct.dept_no = d.dept_no
where d.dept_name = 'Sales' 
or d.dept_name = 'Development'
order by last_name;


--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

select last_name, COUNT(last_name) as "frequency"
from employees 
group by last_name
order by frequency desc;