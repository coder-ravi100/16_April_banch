-- TCL (TRANSACTION CONTROL LANGUAGE)
-- 1.Rollback 2.Commit

-- Delete From Three Row 


-- Data for Undo Yaani Data Wapas Aajata Hai

select * from employees;
rollback;

select * from employees;
commit;


