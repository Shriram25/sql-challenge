/* Shriram Sreedhar - Homewrok #9 Aug 10-2020 - UCF Data & Analytics Boot Camp */

/* 1. List the following details of each employee: 
employee number, last name, first name, sex, and salary.
*/
	
select employees.emp_no,employees.last_name,employees.first_name,employees.sex,cast(salaries.salary as money) 
from employees 
inner join salaries 
on salaries.emp_no = employees.emp_no
	
/*2. List first name, last name, and hire date for employees who were hired in 1986.
*/

select first_name,last_name,hire_date 
from employees
where
extract(year from hire_date)='1986'

/*3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
*/

select dept_manager.dept_no,departments.dept_name,dept_manager.emp_no,employees.last_name,employees.first_name 
from dept_manager
INNER JOIN
departments ON departments.dept_no = dept_manager.dept_no
INNER JOIN
employees  on  employees.emp_no = dept_manager.emp_no
	
/*4List the department of each employee with the following information: employee number, last name, first name, and department name.
*/
select dept_emp.emp_no,dept_emp.dept_no,employees.last_name,employees.first_name,departments.dept_name 
from dept_emp
INNER JOIN
departments ON departments.dept_no = dept_emp.dept_no
INNER JOIN
employees ON employees.emp_no = dept_emp.emp_no
	
/* 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
*/	

select first_name,last_name,sex from employees where first_name='Hercules' and last_name like 'B%'
	
/*6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
*/
select dept_emp.emp_no,employees.last_name,employees.first_name,departments.dept_name from
dept_emp
INNER JOIN
employees ON employees.emp_no = dept_emp.emp_no
INNER JOIN
departments ON departments.dept_no=dept_emp.dept_no
WHERE
dept_emp.dept_no = 'd007'
	
	
/*7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

*/
select dept_emp.emp_no,employees.first_name,employees.last_name,departments.dept_name from 
dept_emp
INNER JOIN
employees ON employees.emp_no = dept_emp.emp_no
INNER JOIN
departments ON departments.dept_no=dept_emp.dept_no
WHERE
dept_emp.dept_no IN ('d007','d005')

/* 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

*/		
select employees.last_name, count(*) from employees group by employees.last_name ORDER BY  count(*) DESC
	
