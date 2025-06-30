-- DCL (Data Control Language)

create role student;

create user Rohan identified by 'abc@123' default role student;

grant select on sd_sql.employees to Rohan;

grant insert,update on sd_sql.employees to Rohan;

revoke insert on sd_sql.employees from Rohan;

-- ---------------------------------------------------------------------
-- Only permission to insert has been given to Rohan.

-- Try inserting For Main User 
insert into student values(3,'Radha',98.78,'A');

-- Try inserting For Role User
insert into sd_sql.student values(4,'Rishabh',78.76,'B');

-- Try selecting For Main User 
select * from student;

-- Try selecting For Role User
select * from sd_sql.employees;




