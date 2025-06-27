-- TCL (TRANSACTION CONTROL LANGUAGE)
-- 1.Rollback 2.Commit

-- Delete From Three Row 


-- Data for Undo Yaani Data Wapas Aajata Hai
delete from employees where Employee_id = 100;
delete from employees where Employee_id = 101;

select * from employees;
rollback;

select * from employees;
commit;


