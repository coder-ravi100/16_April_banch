-- DDL(DATA DEFINITION LANGUAGE)
-- CREATION FOR STRUCTURE TABLE AND COLUMN ROW

CREATE TABLE management
(id int not null unique,
first_name varchar(25) not null,
last_name varchar(25)not null,
join_date date not null,
salary int not null
);
describe management;
describe library;
-- Table name change 
alter table management rename library;
alter table library rename management;

-- change column name
alter table management rename column join_date to joining_date;
alter table management rename column joining_date to join_date;
