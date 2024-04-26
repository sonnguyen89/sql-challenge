SQL Challenge Repository

This repository contains 2 SQL files, one for create table for csv input files in Data directory, another one for data analysis by add multiple SQL queries

## Table of Contents

- [Overview](#overview)
- [Usage](#usage)
- [Scripts](#scripts)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)

## Overview
SQL Queries file that create tables and import csv files from "Data" in the specified squence:
   1. departments
   2. titles
   3. employees
   4. dept_emp
   5. dept_manager
   6. salaries

SQL Queries file that analyzes tables and generate result for each of the following request:
   1. List the employee number, last name, first name, sex, and salary of each employee.
   2. List the first name, last name, and hire date for the employees who were hired in 1986.
   3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
   4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
   5. List the first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
   6. List each employee in the Sales department, including their employee number, last name, and first name.
   7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
   8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

## Usage

To use the these 2 queries in your Mac or Window environment, follow these general steps:

1. Open pgAdmin4.
2. connect to the Database
3. run "Create table" queries at create_tables.sql at directory "EmployeeSQL"
4. Next, adhere to the instructions on importing CSV files located in the 'data' folder into tables in the specified sequence.
5. run each queries at sql_queries.sql at at directory "EmployeeSQL" for each data analysis from assignment


## Scripts

SQL files available in the directory "EmployeeSQL": 

- `create_tables.sql`: A script to create table for import the CSV files from directory "data".

- `sql_queries.sql`: A script to read, analyse tables and generate the results


Feel free to explore and modify these sql to suit your specific needs.

## Contributing

Contributions to this repository are welcome! If you have any useful SQL queries or improvements to existing ones, please feel free to submit a pull request.

Before contributing, please ensure that your code adheres to the repository's coding standards and practices.

## License

This repository is licensed under the [MIT License](LICENSE).

## Contact

If you have any questions, suggestions, or concerns regarding this repository, please don't hesitate to contact the repository owner:

- Email: [nam_son14@yahoo.com](mailto:nam_son14@yahoo.com
- GitHub: [songuyen89](https://github.com/sonnguyen89)