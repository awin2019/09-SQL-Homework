-- Use the information you have to create a table schema for each of the six CSV files.
-- Remember to specify data types, primary keys, foreign keys, and other constraints.

CREATE TABLE employees (
    emp_no INT PRIMARY KEY NOT NULL,
    birth_date VARCHAR(30) NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    gender VARCHAR(1) NOT NULL,
    hire_date VARCHAR(30) NOT NULL
);

CREATE TABLE departments (
    dept_no VARCHAR(4) PRIMARY KEY NOT NULL,
    dept_name VARCHAR(30) NOT NULL
);

CREATE TABLE dept_emp (
    emp_no INT NOT NULL FOREIGN KEY,
    dept_no VARCHAR(4) NOT NULL,
    from_date VARCHAR(30) NOT NULL,
    to_date VARCHAR(30) NOT NULL
);

CREATE TABLE dept_manager (
    dept_no VARCHAR(4) NOT NULL FOREIGN KEY,
    emp_no INT NOT NULL FOREIGN KEY,
    from_date VARCHAR(30) NOT NULL,
    to_date VARCHAR(30) NOT NULL
);

CREATE TABLE salaries (
    emp_no INT NOT NULL FOREIGN KEY,
    salary INT NOT NULL,
    from_date VARCHAR(30) NOT NULL,
    to_date VARCHAR(30) NOT NULL
);

CREATE TABLE titles (
    emp_no INT NOT NULL FOREIGN KEY,
    title VARCHAR(30) NOT NULL,
    from_date VARCHAR(30) NOT NULL,
    to_date VARCHAR(30) NOT NULL
);