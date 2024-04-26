
-- Create a table "departments"
CREATE TABLE IF NOT EXISTS departments (
  dept_no VARCHAR(30) NOT NULL,
  dept_name VARCHAR(30) NOT NULL,
  PRIMARY KEY (dept_no)
);

-- Create a table "titles"
CREATE TABLE IF NOT EXISTS titles (
  title_id VARCHAR(30) NOT NULL,
  title VARCHAR(30) NOT NULL,
  PRIMARY KEY (title_id)	
);

-- Create a table "employees"
CREATE TABLE IF NOT EXISTS employees (
    emp_no INTEGER NOT NULL,
    emp_title_id VARCHAR(30) NOT NULL,
	birth_date DATE,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(1) CHECK (sex IN ('M', 'F')),
	hire_date DATE,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

-- Create a table "dept_emp"
CREATE TABLE IF NOT EXISTS dept_emp (
  emp_no INTEGER NOT NULL,
  dept_no VARCHAR(30) NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- Create a table "dept_manager"
CREATE TABLE IF NOT EXISTS dept_manager (
  dept_no VARCHAR(30) NOT NULL,
  emp_no INTEGER NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- Create a table "salaries"
CREATE TABLE IF NOT EXISTS salaries (
  emp_no INTEGER NOT NULL,
  salary INTEGER NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);


-- Utilize pgAdmin to import CSV files into each table according to the specified sequence:

-- 1. Start with 'departments'.
-- 2. Proceed to 'titles'.
-- 3. Then, import data into 'employees'.
-- 4. Follow with 'dept_emp'.
-- 5. Next, import into 'dept_manager'.
-- 6. Finally, handle 'salaries'.
