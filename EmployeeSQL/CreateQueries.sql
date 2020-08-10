CREATE table departments(
	dept_no VARCHAR(5),
	dept_name VARCHAR(30)
	);
	
create table titles(
		title_id VARCHAR(5),
		title    VARCHAR(30)
);
		
create table employees(
		emp_no int,
		emp_title_id VARCHAR(5),
		birth_date DATE,
		first_name VARCHAR(25),
		last_name VARCHAR(25),
		sex CHAR
);

create table  salaries(
		emp_no int,
		salary int
);

create table dept_emp(
	dept_no VARCHAR(5),
	emp_no int
	);
	
create table dept_manager(
	dept_no VARCHAR(5),
	emp_no  int
	
	);
	
	
					
	