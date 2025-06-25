-- TCL (TRANSACTION CONTROL LANGUAGE)
-- 1. COMMIT 2. ROLLBACK
delete from employees where Employee_id = 101;
delete from employees where Employee_id = 100;
delete from employees where Employee_id = 102;

select * from employees;
rollback;

select * from employees;
commit;
