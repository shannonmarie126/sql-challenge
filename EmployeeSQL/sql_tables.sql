create table departments (
	dept_no varchar(20) not null,
	dept_name varchar(50) not null,
	primary key(dept_no)
);

create table titles (
	title_id varchar(20) not null,
	title varchar(50) not null,
	primary key (title_id)
);

create table employees (
	emp_no int not null,
	emp_title_id varchar(20) not null,
	birth_date date not null,
	first_name varchar(50) not null,
	last_name varchar(50) not null,
	sex varchar(10) not null,
	hire_date date not null,
	primary key (emp_no)
);

create table dept_emp (
	emp_no int not null,
	dept_no varchar(20) not null,
	foreign key (dept_no) references departments (dept_no),
	foreign key (emp_no) references employees (emp_no)
);

create table dept_manager (
	dept_no varchar(20)not null,
	emp_no int not null,
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees (emp_no)
);

create table salaries (
	emp_no int not null,
	salary int not null,
	foreign key (emp_no) references employees (emp_no)
);


ALTER TABLE employees
ADD CONSTRAINT fk_title
FOREIGN KEY (emp_title_id) REFERENCES titles (title_id);