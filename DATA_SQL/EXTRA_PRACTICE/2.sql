-- DML Command (Data Manipulation Language)
use 16_april_database;
create table employees
(employees_id int not null unique,
first_name varchar(25) not null,
last_name varchar(25) not null,
Hire_date date not null,
salary int not null,
commission_pct float,
manager_id int,
department_id int);
describe employees;

--  '1989-09-21'   ✅ (Correct Format)
-- YYYY-MM-DD

insert into employees values(100,'Neena','Kochhar','1989-09-21',17000,null,100,90);
insert into employees values(101,'Lex','Dehaan','1993-01-13',17000,null,100,90);
insert into employees values(102,'Alexander','Humold','1990-01-03',9000,null,101,60);
insert into employees values(103,'Bruce','Ernst','1991-05-21',6000,null,102,60);
insert into employees values(104,'Diana','Lorentz','1999-02-07',4200,null,103,60);
insert into employees values(105,'Kevin','Morgous','1999-11-16',5800,null,103,50);
insert into employees values(106,'Trenna','Rajs','1995-10-17',3500,null,100,50);
insert into employees values(107,'Curtis','Davies','1997-01-29',3100,null,124,50);
insert into employees values(108,'Randall','Matos','1998-03-15',2600,null,124,50);
insert into employees values(109,'Peter','Vargas','1998-07-09',2500,null,124,50);
insert into employees values(110,'Eleni','Zlotkey','2000-01-29',10500,0.2,124,80);
insert into employees values(111,'Ellen','Abbel','1996-05-11',11000,0.4,100,80);
insert into employees values(112,'Jonathan','Taylor','1998-03-24',8600,0.5,149,80);
insert into employees values(113,'Kimerely','Grant','1999-05-24',7000,0.1,149,null);
insert into employees values(114,'Jennifer','Whalen','1987-09-17',4400,null,149,10);
insert into employees values(115,'Micheal','Hartstein','1996-02-17',13000,null,101,20);
insert into employees values(116,'Pat','Fay','1997-08-17',6000,null,100,20);
insert into employees values(117,'Shelley','Higgins','1994-06-07',12000,null,101,110);
insert into employees values(118,'William','Giets','1994-06-07',8300,null,205,110);

-- ✅ PART 1: Basic SELECT Queries
-- Show all data
select * from employees;
-- Show specific columns
select employees_id,first_name,last_name from employees;
-- Rename column using alias
select salary as Income from employees;
select employees_id as Employees_code from employees;
-- Concatenate columns
select concat(first_name,' ',last_name) as Full_name from employees;

-- ✅ PART 2: WHERE Clause (Condition-based Filter)
-- Basic condition
select * from employees where salary > 10000;
-- Multiple conditions (AND)
select * from employees where salary > 10000 and department_id = 90;
-- Use OR
select * from employees where department_id = 50 or department_id = 90;
-- Use BETWEEN
select * from employees where salary between 8000 and 10000;
-- Use IN
select * from employees where department_id in (90,60,50);
-- Use IS NULL / IS NOT NULL
select * from employees where commission_pct is not null;
select * from employees where commission_pct is null;

-- ✅ PART 3: LIKE, ORDER, LIMIT
-- Pattern match (LIKE)
select * from employees where first_name like 'J%';
-- Ends with
select * from employees where last_name like '%z';
-- Contains
select * from employees where first_name like '%e%';
-- Sort ascending
select * from employees order by salary asc;
