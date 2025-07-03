-- DATABASE CODE----------------------------------------
create database instituteDB; -- THIS IS A SCHEMA
use instituteDB;

create role Counsellor;
create user muskan identified by 'muskan@123' default role muskan;
grant select on institutedb.student_infos to muskan;
grant insert,update on institutedb.student_infos to muskan;
DROP ROLE IF EXISTS Counsellor;

-- ---------------------------------------------------------

create role Admin;
create user ridham identified by 'ridham@123' default role ridham;
grant select on institutedb.student_records to ridham;
grant select,update,delete on institutedb.student_records to ridham;
REVOKE INSERT ON institutedb.student_records from ridham;
-- -------------------------------------------------------

create role Student;
create user shyaam identified by 'shyaam@123' default role shyaam;
GRANT SELECT ON institutedb.student_dashboards TO shyaam;

-- -------------------------------------------------------



