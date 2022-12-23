CREATE TABLE departments
(
    dept_no VARCHAR(30) NOT NULL,
    dept_name VARCHAR(30) NOT NULL,
    PRIMARY KEY (dept_no)
);
CREATE TABLE salaries
(
    emp_no integer NOT NULL,
    salary integer,
    PRIMARY KEY (emp_no)
)
CREATE TABLE titles
(
    title_id character varying(30) NOT NULL,
    title character varying(30 NOT NULL,
    PRIMARY KEY (title_id)
)
	
CREATE TABLE dept_emp
(
    emp_no int NOT NULL,
    dept_no VARCHAR(30) NOT NULL,
    PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
	FOREIGN KEY (emp_no) REFERENCES salaries (emp_no)
);

CREATE TABLE dept_manager
(
    dept_no character varying(30) NOT NULL,
    emp_no integer NOT NULL,
    PRIMARY KEY (dept_no, emp_no),
    FOREIGN KEY (dept_no)  REFERENCES departments (dept_no)
)	
	
CREATE TABLE employees (
	id serial,
	emp_no int not null,
	emp_title_id VARCHAR(30) NOT NULL,
    birth_date VARCHAR(30) NOT NULL,
	first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(30) NOT NULL,
	hire_date date NOT NULL,
	primary key (id),
	foreign key (emp_title_id) references titles (title_id),
	key (emp_no) references salaries (emp_no)
									  
);