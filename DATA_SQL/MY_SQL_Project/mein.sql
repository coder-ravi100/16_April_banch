-- DATABASE CODE----------------------------------------
create database instituteDB; -- THIS IS A SCHEMA
use instituteDB;

-- TABLE CODE----------------------------------------

create table student_info
(student_id int primary key,
name varchar(25) not null,
course varchar(25)not null,
contact int not null);

create table student_records
(student_id int primary key,
name varchar(25) not null,
course varchar(25) not null,
admmission_date date);

create  table student_dashboard
(student_id int,
project_name varchar(100),
attendance_percentage float);

create role Counsellor;
create user muskan identified by 'muskan@123' default role muskan;
grant select on institutedb.student_info to muskan;
grant insert,update on institutedb.student_info to muskan;

DROP ROLE IF EXISTS Counsellor;

-- ---------------------------------------------------------

create role Admin;
create user ridham identified by 'ridham@123' default role ridham;
grant select on institutedb.student_records to ridham;
grant select,delete on institutedb.student_records to ridham;

REVOKE INSERT ON institutedb.student_records from ridham;
-- -------------------------------------------------------
DROP ROLE IF EXISTS Student ;
create role Student;
create user ravi identified by 'ravi@123' default role ravi;
grant select on institutedb.student_dashboard to ravi;
grant select on institutedb.student_dashboard to ravi;

-- -------------------------------------------------------

-- TRIGGER CODE ------------------------------------------

create trigger student_info
after insert on institutedb.student_records
for each row
insert into student_records (student_id,name,course,admission_date)
values(new.student_id,new.name,new.course,now());
SHOW TRIGGERS;
DROP TRIGGER IF EXISTS student_info
