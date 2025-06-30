create table student
(std_id int not null unique,
name varchar(25) not null,
marks int not null,
grade char,
city varchar(25));

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
WHERE marks - 10 < 50;

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
AND city = "Delhi";

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


-- PRACTICE Qs
--  Q1: WRITE THE QUERY TO FIND AVG MARKS IN EACH CITY IN ASCENDING ORDER

SELECT city, AVG(marks)
FROM student
GROUP BY city
ORDER BY city ASC;
-- OR -----------------
SELECT city, AVG(marks)
FROM student
GROUP BY city
ORDER BY AVG(marks) ASC;
--  -----------------------------------------------------------------------------------------
-- Q2 FOR THE GIVEN TABLE FIND THE TOTAL PAYMENT ACCORDING TO EACH PAYMENT METHOD
-- FIRST CREATE TABLE THEN FIRE QUERY

CREATE TABLE payment 
(customer_id int not null unique,
customer varchar(25) not null,
mode varchar(25) not null,
city varchar(25));
describe payment;

insert into payment values(101,'Olivia Barrett','Netbanking','portiand');
insert into payment values(102,'Ethan Sinciair','Credit Card','Miami');
insert into payment values(103,'Maya Hernanadez','Credit Card','Seattle');
insert into payment values(104,'Liam Donovan','Netbanking','Denver');
insert into payment values(105,'Sophia  Nguyen','Credit Card','New Orieans');
insert into payment values(106,'Caleb Foster','Credit Card','Minneapolis');
insert into payment values(107,'Ava Patel','Credir Card','Phoenix');
insert into payment values(108,'Lucas Carter','Netbanking','Boston');
insert into payment values(109,'Isabella Martinez','Netbanking','Navshille');
insert into payment values(110,'Jackson Brooks','Credit Card','Boston');

select * from payment;
-- Q2 FOR THE GIVEN TABLE FIND THE TOTAL PAYMENT ACCORDING TO EACH PAYMENT METHOD
-- GROUP KOIN KOIN BANEGE
-- NETBANKING
-- CREDIT
-- DEBIT
select mode, max(city),count(customer)
FROM payment
GROUP BY mode;

SELECT grade,COUNT(std_id)
FROM student
GROUP BY grade
ORDER BY grade ASC;

-- HAVING CLAUSE
-- SIMILAR TO WHERE I.E APPLIES SOME CONDITION ON ROWS
-- USED WHEN WE WANT TO APPLY ANY CONDITION AFTER GROUPING.alter

SELECT city, COUNT(std_id)
FROM student
GROUP BY city;

SELECT city, COUNT(std_id)
FROM student
GROUP BY city
HAVING MAX(marks) > 90;

-- GENERAL ORDER
-- SELECT column(s)
-- WHERE condition -- condition for rows
-- FROM table_name
-- GROUP BY column(s)
-- HAVING condition -- condition for group 
-- ORDER BY column(s)asc;

SELECT city
FROM student
WHERE grade = 'A'
GROUP BY city
HAVING MAX(marks) >= 90
ORDER BY city ASC;

SELECT city
FROM student
WHERE grade = 'A'
GROUP BY city
HAVING MAX(marks) >= 90
ORDER BY city desc;