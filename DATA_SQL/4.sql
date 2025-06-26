create role student;

create user Rohan identified by 'abc@123' default role student;

grant select on sd_sql.employees to Rohan;

grant insert,update on sd_sql.employees to Rohan;

revoke update on sd_sql.employees from Rohan;