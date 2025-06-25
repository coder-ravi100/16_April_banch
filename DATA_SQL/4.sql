-- 1.Basic select Queries:
select employee_id,first_name,last_name from employees;
-- employees table se sirf employee_id, first_name, aur last_name ko select karta hai.
select * from employees;
--  employees table ke sare columns aur rows ko show karta hai.

-- 2.Where Clause: Filtering Row
select * from employees where department_id = 90;
-- Sirf un rows ko show karega jinka department_id = 90 ho.

select * from employees where salary > 10000;
select * from employees where salary < 10000;
-- (>) greater than, (<) less than salary ke filter ke liye.

select * from employees where salary between 10000  and 20000;
-- BETWEEN ka use range ke liye hota hai – yaha 10,000 se 20,000 ke salary wale log.

-- 3.AND / OR Operators
select * from employees where department_id = 90 and manager_id = 100;
-- Dono condition true hone chahiye.

select * from employees where department_id = 90 or manager_id = 100;
-- Koi bhi ek condition true ho to row aayegi.

-- 4.Null / Not Null Check
select * from employees where commission_pct is null;
-- Aise employees jinke paas commission_pct nahi hai (NULL).

select * from employees where commission_pct is not null;
-- Aise employees jinke paas commission_pct available hai.

-- 5.CONCAT Function
select employee_id, concat(first_name,' ',last_name) as Full_Name from employees;
-- first_name aur last_name ko jod kar ek full name banata hai.

-- 6.ORDER BY: Sorting
select * from employees order by salary;
-- Salary ke ascending order mein sort karega.

select * from employees order by salary desc;
-- Salary ke descending order mein sort karega

select * from employees order by 1;
--  6th column ke basis pe sort karega (column position number)

select employee_id,first_name,salary as income from employees order by income; 
--  Alias income banakar usi pe sorting.

-- 7.LIKE: Pattern Matching
select * from employees where first_name like 'A%';
-- First name A se shuru hone wale.

select * from employees where first_name like '%e';
-- First name 'e' pe end hone wale.

select * from employees where  first_name like '%e_';
--  Last second character e ho, aur uske baad ek character ho.

-- 8.IN / NOT IN: Multiple Match
select * from employees where department_id in (90,60,50);
-- In teen department_id me se kisi ek ka match ho.

select * from employees where department_id not in(90,60,50);
-- Ye tino department_id na ho ya inke alawa.

-- 9.Aggregate Function
select min(salary) from employees;
select max(salary) from employees;
select sum(salary) from employees;
select avg(salary) from employees;
-- Minimum, Maximum, Total aur Average salary calculate karta hai.

select count(commission_pct) from employees;
-- Commission_pct ke non-null rows kitne hai.

-- 10.GROUP BY + HAVING
select department_id,min(salary) from employees group by department_id having min(salary)<10000; 
-- Department wise salary ka min nikalega, aur sirf wahi show karega jiska min salary < 10000 ho.

-- 11.LIMIT + OFFSET
select * from employees limit 3;
-- Sirf top 3 records dikhayega.

select * from employees limit 5 offset 3;
-- 4th record se start karke 5 records dikhayega.

select * from employees order by salary  desc limit 5;
-- Highest salary wale top 5 employees.

select * from employees order by salary limit 5;
-- Lowest salary wale top 5.

select * from employees order by salary  limit 10