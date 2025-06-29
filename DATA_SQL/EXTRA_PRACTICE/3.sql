create table student
(rollno int not null unique,
name varchar(25) not null,
marks int not null,
grade char,
city varchar(25));
alter table student rename column rollno to std_id;
describe student;

insert into student values(101,'Anil',78,'C','Pune');
insert into student values(102,'Bhumika',93,'A','Mumbai');
insert into student values(103,'Chetan',85,'B','Mumbai');
insert into student values(104,'Dhruve',96,'A','Delhi');
insert into student values(105,'Ravi',12,'F','Delhi');
insert into student values(106,'Farah',82,'B','Delhi');

SELECT * FROM student;

SELECT
distinct city 
from student;

SELECT * 
FROM student
WHERE marks > 80 
AND city = 'Mumbai';

SELECT * 
FROM student
WHERE marks + 10 > 100;

SELECT * 
FROM student
WHERE marks = 93;

SELECT * 
FROM student
WHERE marks > 90;

SELECT * 
FROM student
WHERE marks > 90 
AND city = 'Mumbai';

SELECT * 
FROM student
WHERE marks > 80 
OR city = 'Mumbai';

-- operators AND OR BETWEEN IN NOT IN
SELECT * 
FROM student
WHERE marks
BETWEEN 80 
AND 90;

SELECT * 
FROM student
WHERE city
IN ('Delhi','Mumbai');

SELECT * 
FROM student
WHERE city
NOT IN ('Delhi','Mumbai');
							
-- Limit Clause

SELECT *
FROM student 
WHERE marks > 75
LIMIT 3;

-- Order By Clause
