SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees 
LEFT JOIN salaries
ON salaries.emp_no = employees.emp_no
	
	
select first_name, last_namehire_date from employees
where hire_date between '1986-01-01' and '1986-12-31' 

select departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
from departments
Left join dept_manager
on dept_manager.dept_no = departments.dept_no
Left join employees
on employees.emp_no = dept_manager.emp_no
	
select e.first_name, e.last_name, e.emp_no, de.dept_no, d.dept_name
from employees as e
inner join dept_emp as de on (e.emp_no = de.emp_no) 
inner join departments as d on (de.dept_no = d.dept_no)

select first_name, last_name, sex from employees  
where first_name = 'Hercules' and last_name LIKE 'B%';
	
select e.first_name, e.last_name, e.emp_no, de.dept_no, d.dept_name
from employees as e
inner join dept_emp as de on (e.emp_no = de.emp_no) 
inner join departments as d on (de.dept_no = d.dept_no)
where dept_name = 'Sales'

select e.first_name, e.last_name, e.emp_no, de.dept_no, d.dept_name
from employees as e
inner join dept_emp as de on (e.emp_no = de.emp_no) 
inner join departments as d on (de.dept_no = d.dept_no)
where dept_name = 'Sales' or dept_name = 'Development'
	
select last_name, count(last_name) as counts
from employees
group by last_name 
order by counts desc
