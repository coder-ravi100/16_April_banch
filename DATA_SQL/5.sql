-- TCL (TRANSACTION CONTROL LANGUAGE)
-- 1.Rollback 2.Commit

-- Delete From Three Row 


-- Data for Undo Yaani Data Wapas Aajata Hai
select * from employees;
rollback;

select * from employees;
commit;























delete from employees where Employee_id = 100;
delete from employees where Employee_id = 101;
delete from employees where Employee_id = 102;
delete from employees where Employee_id = 103;
delete from employees where Employee_id = 104;
delete from employees where Employee_id = 105;
delete from employees where Employee_id = 106;
delete from employees where Employee_id = 107;
delete from employees where Employee_id = 108;
delete from employees where Employee_id = 109;
delete from employees where Employee_id = 110;
delete from employees where Employee_id = 111;
delete from employees where Employee_id = 112;
delete from employees where Employee_id = 113;
delete from employees where Employee_id = 114;
delete from employees where Employee_id = 115;
delete from employees where Employee_id = 116;
delete from employees where Employee_id = 117;
delete from employees where Employee_id = 118;
-- ------------------------------------------

insert into employees values(100, 'Steven', 'King','1987-07-17', 24000, null, null, 90);
insert into employees values(101,'Lex','Dehaan','1993-01-13',17000,null,100,90);
insert into employees values(102,'Alexander','Humold','1990-01-03',9000,null,102,60);
insert into employees values(103,'Bruce','Ernst','1991-05-21',6000,null,103,60);
insert into employees values(104,'Diana','Lorentz','1999-02-07',4200,null,103,60);
insert into employees values(105,'Kevin','Morgous','1999-11-16',5800,null,100,50);
insert into employees values(106,'Trenna','Rajs','1995-10-17',3500,null,124,50);
insert into employees values(107,'Curtis','Davies','1997-01-29',3100,null,124,50);
insert into employees values(108,'Randall','Matos','1998-03-15',2600,null,124,50);
insert into employees values(109,'Peter','Vargas','1998-07-09',2500,null,124,50);
insert into employees values(110,'Eleni','Zlotkey','2000-01-29',10500,0.2,100,80);
insert into employees values(111,'Ellen','Abbel','1996-05-11',11000,0.4,149,80);
insert into employees values(112,'Jonathan','Toylor','1998-03-24',8600,0.5,149,80);
insert into employees values(113,'Kimerely','Grant','1999-05-24',7000,0.1,149,null);
insert into employees values(114,'Jennifer','Whalen','1987-09-17',4400,null,101,10);
insert into employees values(115,'Micheal','Hartstein','1996-02-17',13000,null,100,20);
insert into employees values(116,'Pat','Fay','1997-08-17',6000,null,201,20);
insert into employees values(117,'Shelley','Higgins','1994-06-07',12000,null,101,110);
insert into employees values(118,'William','Giets','1994-06-07',8300,null,205,110);
