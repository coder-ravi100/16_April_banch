delimiter &&
create procedure display()
select * from employees order by salary;
end &&

call  display();
drop  procedure display;

delimiter &&
create procedure display(in id int)
begin
select * from employees where Employee_id = id;
end &&

call display(103);
drop procedure display;

-- -------------------------------------------------
delimiter &&
create procedure update_sal(in id int , sal int)
begin
update employees set salary = salary + sal where Employee_id = id;
end &&

select * from employees;

call update_sal(104,2000);

select * from employees;

create  view person as select 