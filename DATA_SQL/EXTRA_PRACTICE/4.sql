-- DCL (Data Control Language)
-- EMPLOYEES TABLE
CREATE TABLE employees (
    emp_id INT NOT NULL UNIQUE,
    emp_name VARCHAR(50),
    salary INT NOT NULL
);

-- DEPARTMENT TABLE
CREATE TABLE departments(
    dept_id INT NOT NULL UNIQUE,
    dept_name VARCHAR(50) NOT NULL
);

-- PROJECT TABLE
CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100),
    dept_id INT
);
-- OPERATION FOR DATA CONTROL LANGUAGE

-- ROLE FOR EMPLOYEES TABLE / MUSKAN MA'AM
CREATE ROLE Counsellor;

CREATE USER Muskan IDENTIFIED BY 'muskan@123' DEFAULT ROLE Counsellor;

GRANT SELECT ON 16_april_database.employees TO Muskan;

GRANT INSERT,UPDATE ON 16_april_database.employees TO Muskan;

REVOKE SELECT ON 16_april_database.employees FROM Muskan;
-- -----------------------------------------------------------------

-- ROLE FOR DEPARTMENT / RIDHAM SIR
CREATE ROLE Teacher;

CREATE USER Ridham IDENTIFIED BY 'ridham@123' DEFAULT ROLE Teacher;

GRANT SELECT ON 16_april_database.departments TO Ridham;

GRANT INSERT,DELETE ON 16_april_database.departments TO Ridham;
-- -------------------------------------------------------------------

-- ROLE FOR PROJECT / RAVI 
CREATE ROLE Student;

CREATE USER Ravi IDENTIFIED BY 'ravi@123' DEFAULT ROLE Student;

GRANT SELECT ON 16_april_database.projects TO Ravi;

GRANT SELECT ON 16_april_database.projects TO Ravi;


-- Counsellor Entry For INSERT,UPDATE In employees Table


-- Teacher Entry For INSERT,DELETE In Department 


-- Student Entry For SELECT In Project Table


