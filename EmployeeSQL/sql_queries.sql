SELECT * FROM departments;

SELECT * FROM titles;

SELECT * FROM employees;

SELECT * FROM dept_emp;

SELECT * FROM dept_manager;

SELECT * FROM salaries;


-- List the employee number, last name, first name, sex, and salary of each employee.

SELECT e.emp_no, e.last_name,e.first_name, e.sex, s.salary
FROM employees e
LEFT JOIN salaries s ON e.emp_no = s.emp_no
ORDER BY e.emp_no desc;



-- List the first name, last name, and hire date for the employees who were hired in 1986.

SELECT first_name, last_name, hire_date
FROM employees
WHERE EXTRACT(YEAR FROM hire_date) = 1986;

-- List the manager of each department along with their department number, department name, employee number, last name, and first name.

SELECT dept.dept_no, dept.dept_name, e.emp_no, e.last_name, e.first_name
FROM employees e
INNER JOIN dept_manager de ON de.emp_no = e.emp_no 
INNER JOIN departments dept on dept.dept_no = de.dept_no
ORDER BY dept.dept_no ASC;


-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT de.dept_no, e.emp_no, e.last_name, e.first_name, dept.dept_name
FROM employees e
INNER JOIN dept_emp de ON de.emp_no = e.emp_no 
INNER JOIN departments dept ON dept.dept_no = de.dept_no
ORDER BY dept.dept_no ASC;


-- List the first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'

-- List each employee in the Sales department, including their employee number, last name, and first name.

SELECT de.dept_no, e.emp_no, e.last_name, e.first_name, dept.dept_name
FROM employees e
INNER JOIN dept_emp de ON de.emp_no = e.emp_no 
INNER JOIN departments dept ON dept.dept_no = de.dept_no
WHERE dept.dept_name = 'Sales'
ORDER BY dept.dept_no ASC;

-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT de.dept_no, e.emp_no, e.last_name, e.first_name, dept.dept_name
FROM employees e
INNER JOIN dept_emp de ON de.emp_no = e.emp_no 
INNER JOIN departments dept ON dept.dept_no = de.dept_no
WHERE dept.dept_name IN ('Sales', 'Development')
ORDER BY dept.dept_no ASC;

-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

SELECT last_name, COUNT(*) as frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC, last_name ASC;



