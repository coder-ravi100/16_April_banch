-- Insert and Delete Before And After Trigger
create table Users
(user_id int not null unique,
name varchar(25) not null,
age int not null);
 
create table Deleted_User
(user_id int,
name varchar(25),
age int,
Stamp time);

-- Trigger Code For Before
create trigger Data_delete
before delete on sd_sql.users
for each row
insert into deleted_user values(old.user_id,old.name,old.age,curtime());

insert into users values(101,'Ravi',20);
insert into users values(102,'Subham',25);
insert into users values(103,'Meghna',30);

select * from users;

delete from users where user_id = 101;
delete from users where user_id = 102;

select * from Deleted_User;

create table New_user
(user_id int not null unique,
name varchar(25) not null,
age int not null);

create table Backup_data
(user_id int,
name varchar(25),
age int,
Stamp time);

-- Trigger Code For After
create trigger copy_data
after insert on sd_sql.new_user
for each row
insert into backup_data values(new.user_id,new.name,new.age, curtime());

insert into new_user values(101,'Ravi',20);
insert into new_user values(102,'Sourya',25);
insert into new_user values(103,'shubham',30);

select * from new_user;

delete from new_user where user_id = 101;
delete from new_user where user_id = 102;

select * from Backup_data;

-- Update Table Before And After Trigger

create table Old_User
(user_id int not null unique,
name varchar(25) not null,
age int not null);

create table update_user
(user_id int,
name varchar(25),
age int,
Stamp time);

create trigger log_update
after update on sd_sql.old_user
for each row
insert into old_user values (old.user_id,new.user_id,old.name,new.name,old.age,new.age,curtime());

drop trigger log_update;
show triggers;

insert into old_user values(101,'Ridham',25);
insert into old_user values(102,'Neha',20);
insert into old_user values(103,'Kajal',35);

select * from Old_User;

update old_user set age = 30, name = 'Ridha s' where user_id = 101;

select * from update_user;