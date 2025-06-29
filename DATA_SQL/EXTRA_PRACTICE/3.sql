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

-- SELECT In Details
SELECT * FROM student;
 
SELECT name,marks FROM student;

SELECT city FROM student;

SELECT DISTINCT city FROM student;

-- Where Clause
-- Syntax :SELECT col1,col2 FROM table_name Where condition
SELECT * 
FROM student
WHERE marks > 80;

SELECT *
FROM student
WHERE city = "Mumbai";

-- USING OPERATORS IN WHERE
-- ARITHMETIC OPERATORS (+ , - , * , /)
-- COMPARISION OPERATORS (= , != , > , < , <=)
-- LOGICAL OPERATORS (AND ,OR ,NOT ,IN ,BETWEEN ,ALL ,LIKE ,ANY)

SELECT *
FROM student 
WHERE marks + 10 > 100;

SELECT *
FROM student
WHERE marks = 93;

SELECT * 
FROM student
WHERE marks > 80 
AND city = "Mumbai";

SELECT *  -- TRUE
FROM student
WHERE marks > 90 
AND city = "Mumbai";

SELECT * -- TRUE --> FALSE --> TRUE / FALSE --> TRUE -->TRUE
FROM student
WHERE marks > 90
OR city = "Mumbai";

SELECT * -- RANGE SELECT STATEMENT
FROM student 
WHERE marks
BETWEEN 80 AND 90;

SELECT * -- MACHING ANY VALUE IN THE LIST
FROM student
WHERE city 
IN ("Mumbai","Delhi","Gujarat");

SELECT * -- NEGATE THE GIVEN CONDITION / OPPOSITE CHECHED
FROM student
WHERE city
NOT IN ("Mumbai","Delhi","Gujarat");

-- LIMIT CLAUSE
SELECT *
FROM student
WHERE marks > 80
LIMIT 3;

-- ORDER BY CLAUSE
--  TO SORT IN ASCENDING (ASC) OR DESCENDIING (DESC)
-- SELECT COL1, COL2, FROM TABLE_NAME ORDER BY COL_NAME(S) ASC;

SELECT *
FROM student
ORDER BY marks asc;

SELECT *
FROM student
ORDER BY marks desc;

SELECT * 
FROM student
ORDER BY marks ASC
LIMIT 3; 

SELECT *
FROM student
ORDER BY marks desc
LIMIT 3;

-- AGGREGATE FUNCTION
-- AGGREGATE FUNCTION PERFORM A CALCULATION ON A SET OF VALUES AND  RETURN A SINGLE VALUES
-- COUNT() MAX() MIN() SUM() AVG()

SELECT marks 
FROM student;

SELECT 
max(marks),
MIN(marks),
SUM(marks),
AVG(marks),
COUNT(name) 
FROM student;

-- GROUP BY CLAUSE
-- GROUP BY ROWS THAT HAVE THE SAME VALUES INTO SUMMARY ROWS,
-- IT COLLECTS DATA FROM MULTIPLE RECORDS AND GROUPS THE RESULT,
-- BY ONE OR MORE COLUMN .

-- GENERALLY WE USE GROUP BY WITH SOME AGGREGATE FUNCTION

SELECT city,count(std_id)
FROM student
GROUP BY city;

SELECT city,name,COUNT(city)
FROM student
GROUP BY city,name;

SELECT city,AVG(marks)
FROM student
GROUP BY city;
