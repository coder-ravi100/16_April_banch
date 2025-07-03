-- Counsellor Table
CREATE TABLE student_infos
(student_id int unique not null,
name varchar(25) not null,
course varchar(50) not null,
admission_date date);

-- Teacher Table
CREATE TABLE student_records
(student_id int,
name varchar(25),
course varchar(50),

project_name varchar(100) ,
attendance_percentage float);

-- Student Table
CREATE TABLE student_dashboards
(name varchar(25),
course_name varchar(50),
project_name varchar(100),
attendance_percentage float);

-- Trigger Create 

CREATE TRIGGER copy_data_for_student_infos
AFTER INSERT ON institutedb.student_infos
FOR EACH ROW
INSERT INTO student_dashboards (name, course_name, project_name, attendance_percentage)
VALUES (NEW.student_id,NEW.name, NEW.course); 

DROP TRIGGER IF EXISTS copy_data_for_student_infos;

DROP TRIGGER IF EXISTS update_data_for_student_records;

CREATE TRIGGER update_data_for_student_records
BEFORE UPDATE ON institutedb.student_records
FOR EACH ROW
INSERT INTO student_dashboards VALUES 
(OLD.name, OLD.course, OLD.project_name, OLD.attendance_percentage);
select * from student_infos;