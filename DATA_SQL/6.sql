-- RELATION DBMS CONCEPT
-- User Table
create table users
(user_id int primary key,
name varchar(25) not null,
age int);

-- Insert Data from Users
insert into users values(101,'Rohan',25);
insert into users values(102,'Rahul',22);
insert into users values(103,'Mehul',21);
insert into users values(104,'Dhairya',14);
insert into users values(105,'Megha',15); 

select * from users;

-- ---------------------------------------

-- Orders Table
create table orders
(order_id int primary key auto_increment,
name varchar(25) not null,
user_id int,
foreign key orders(user_id) references users(user_id));

insert into orders(name,user_id) values('Toys',101);
insert into orders(name,user_id) values('Soap',101);
insert into orders(name,user_id) values('Shampoo',102);
insert into orders(name,user_id) values('Comb',103);
insert into orders(name,user_id) values('Chocolate',103);

select * from orders;

-- --------------------------------------------------------

select * from users natural join orders; -- Query Trigger But Data Not Show

-- Inner Join
select users.user_id,users.name,orders.name
from users inner join orders
on users.user_id = orders.user_id;

-- Left Join
select users.user_id,users.name,orders.name 
from users left join orders on users.user_id = orders.user_id;

-- Right Join
select  users.user_id,users.name,orders.name
from users right join orders on users.user_id = orders.user_id;

-- Use Union And Union All
-- Table temp 1
create table  temp1
(id int not null unique,
name varchar(25) not null);

-- Data insertion
insert into temp1 values(101,'aaa');
insert into temp1 values(102,'bbb');
insert into temp1 values(103,'ccc');

-- Table temp 2
create table temp2
(id int not null unique,
name varchar(25) not null);

-- Data insertion
insert into temp2 values(101,'aaa');
insert into temp2 values(102,'fff');
insert into temp2 values(103,'ggg');

-- Union
select * from temp1 
union 
select * from temp2;

-- Union All
select * from temp2 
union all
select * from temp2;