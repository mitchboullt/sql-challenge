CREATE TABLE titles (
	title_id VARCHAR(30) NOT NULL,
    title VARCHAR(30) NOT NULL,
	primary key (title_id)
);
CREATE TABLE departments (
	dept_no VARCHAR(30) not null,
    dept_name VARCHAR(30) not null,
	primary key (dept_no)
);
CREATE Table salaries(
	emp_no int primary key,
	salary int
);

CREATE Table dept_emp(
	emp_no int,
	dept_no VARCHAR(30),
	primary key (emp_no, dept_no),
	foreign key (emp_no) references salaries,
	foreign key (dept_no) references departments
);
CREATE Table dept_manager(
	dept_no VARCHAR(30),
	emp_no int,
	primary key (dept_no, emp_no),
	foreign key (emp_no) references salaries,
	foreign key (dept_no) references departments
);
CREATE TABLE employees (
	id serial,
	emp_no int not null,
	emp_title_id VARCHAR(30) NOT NULL,
    birth_date VARCHAR(30) NOT NULL,
	first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(30) NOT NULL,
	hire_date VARCHAR(30) NOT NULL,
	primary key (id),
	foreign key (emp_title_id) references titles (title_id),
	foreign key (emp_no) references salaries (emp_no)
);

SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees 
LEFT JOIN salaries
ON salaries.emp_no = employees.emp_no;

-- select first_name, last_name, hire_date
-- from employees 
-- where (select hire_date from employees where hire_date = )

select departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
from departments
Left join dept_manager
on dept_manager.dept_no = departments.dept_no
Left join employees
on employees.emp_no = dept_manager.emp_no;

select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
Left join departments
on departments.dept_no on dept_emp.dept_no
Left join dept_emp
on dept_emp.dept_no on employees.dept_no

