create table departments (
	dept_no VARCHAR(255) PRIMARY KEY NOT NULL,
	dept_name VARCHAR(255) NOT NULL

);

create table dept_manager (
	dept_no VARCHAR(255) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	emp_no INT NOT NULL
);

create table salaries (
	emp_no INT PRIMARY KEY NOT NULL,
	salary INT NOT NULL
);

create table dept_emp (
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES salaries (emp_no),
	dept_no VARCHAR(255) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

create table employees (
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES salaries (emp_no),
	emp_title_id VARCHAR(255) PRIMARY KEY NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255) NOT NULL,
	sex VARCHAR(1) NOT NULL,
	hire_date DATE NOT NULL
);

create table titles (
	title_id VARCHAR(255) NOT NULL,
	title VARCHAR (255) NOT NULL
);