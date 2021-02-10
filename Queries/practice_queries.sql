/* Notes are taken from assignment instructions */
/* 1. List the following details of each employee: employee number, last name, first name, sex, and salary. */
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary 
	FROM employees INNER JOIN salaries ON employees.emp_no = salaries.emp_no;
	
/* 2. List first name, last name, and hire date for employees who were hired in 1986. */
SELECT first_name, last_name, hire_date
	FROM employees
	WHERE EXTRACT(year FROM hire_date) = 1986;
	
/* 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name. */
SELECT departments.dept_name, employees.last_name, employees.first_name, dept_manager.dept_no, dept_manager.emp_no
	FROM dept_manager 
		LEFT JOIN departments ON dept_manager.dept_no = departments.dept_no
		LEFT JOIN employees ON dept_manager.emp_no = employees.emp_no;
		
/* 4. List the department of each employee with the following information: employee number, last name, first name, and department name. */
SELECT departments.dept_name, employees.last_name, employees.first_name, employees.emp_no
	FROM departments
		LEFT JOIN dept_emp ON departments.dept_no = dept_emp.dept_no
		LEFT JOIN employees ON dept_emp.emp_no = employees.emp_no;

