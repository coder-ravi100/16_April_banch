-- 1.DISPLAY ALL DATA OF EMPLOYEES TABLE
select * from employees;

-- 2.DISPLAY FIRST_NAME OF EMPLOYEES TABLE
select first_name from employees;

-- 3.DISPLAY LAST_NAME AND HIRE_DATE OF EMPLOYEES TABLE
select last_name,hire_date from employees;

-- 4.DISPLAY FIRST_NAME , SALARY AND NEW SALARY (NEW SALARY = SALARY + 1500)
select first_name,salary + 1500 as NEW_SALARY from employees;

-- 5.DISPLAY LAST_NAME , SALARY AND ANNUAL SALARY (ANNUAL SALARY = SALARY * 12)
select last_name,salary * 12 as ANNUAL_SALARY from employees;

-- 6.DISPLAY FIRST_NAME , SALARY AND DAILY SALARY (DAILY SALARY = SALARY / 30)
select first_name,salary / 30 as DAILY_SALARY from employees;

-- 7. DISPLAY FIRST_NAME AND LAST_NAME IN SINGLE COLUMN WITH PROPER COLUMN ALIAS/HEADING.
select concat(first_name,' ',last_name)as ALIAS from employees;

-- 8.DISPLAY GIVEN RESULT FOR EACH EMPLOYEE : King's monthly salary is Rs.24000 
select  concat(last_name,' s monthly salary is Rs. ',salary)as DISPLAY from employees;

-- 9.DISPLAY ALL INFO. OF EMPLOYEES TABLE WITH ANNUAL SALARY
select salary * 12 as ANNUAL_SALARY from employees;

-- 10.DISPLAY FIRST_NAME , NEW_ANNUAL_SALARY (NEW_ANNUAL_SALARY = SALARY + 1000 * 12)
select first_name,salary + 1000 * 12 as NEW_ANNUAL_SALARY from employees;

-- 11.DISPLAY THOSE WHO REPORTS TO MANAGER_ID 100 , 124 OR 149
select * from employees where manager_id in(100) or manager_id in (124,149) ;

-- 12.DISPLAY OTHER THAN THOSE WHO WORKS IN DEPARTMENT 90,110,10

-- 13.DISPLAY ALL OTHER THAN THOSE WHO WORKS IN DEPARTMENT_ID , MANAGER_ID 60,103  80,149   110,101
select * from employees where department_id in (60,80,110) and manager_id in(103,149,101);