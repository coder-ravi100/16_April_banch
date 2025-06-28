-- DDL Command (Data Definition Languege)

create schema 16_april_database;
-- change schema name 
create schema 28_Jun_database; 
drop schema 28_Jun_database; 
-- Finally Schema name 16_april_database
show databases;

create table Employees
(employee_id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
Education varchar(25) not null,
Occupation varchar(25) not null,
salary int not null,
Hire_date date);

describe employees;
-- change table name
alter table managament rename to employees;

-- change column name
alter table employees rename column Qulification to Education;

-- Add column -- Delete Column
alter table employees add column Remarks varchar(25) not null;

alter table employees drop column Remarks;

-- Add column at specific position
alter table employees add column Remarks varchar(25) not null after salary;

-- change data type
alter table employees modify Remarks varchar(25);

-- Add And Remove Constraint
alter table employees add column city varchar(25);

alter table employees modify city varchar(25) not null;

alter table employees modify city varchar(25);

alter table employees modify city varchar(25) not null;

alter table employees modify Remarks varchar(25) not null;

alter table employees modify Hire_date varchar(25) not null;

alter table employees modify Hire_date date;

describe employees;

