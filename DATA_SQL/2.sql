create  table employees
(Employee_id int not null  unique,
first_name  varchar(25) not null,
last_name varchar(25) not null,
hire_date  date not null,
salary int not null,
commission_pct float,
manager_id int,
department_id int);

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
drop table employees;
select * from employees;
update student set name = 'Dhairya' where id = 105;