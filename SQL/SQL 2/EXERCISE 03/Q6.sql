create table IMP_employee(
emp_id number primary key,
emp_name varchar2(30),
salary number,
manager_id number
);

insert into IMP_employee values(10,'Anil',50000,18);
insert into IMP_employee values(11,'Vikas',75000,16);
insert into IMP_employee values(12,'Nisha',40000,18);
insert into IMP_employee values(13,'Nidhi',60000,17);
insert into IMP_employee values(14,'Priya',80000,18);
insert into IMP_employee values(15,'Mohit',45000,18);
insert into IMP_employee values(16,'Rajesh',90000,null);
insert into IMP_employee values(17,'Raman',55000,16);
insert into IMP_employee values(18,'Santosh',65000,17);

select b.emp_id as "Manager_Id",
          b.emp_name as "Manager", 
          avg(a.salary) as "Average_Salary_Under_Manager"
from IMP_employee a, 
     IMP_employee b
where a.manager_id = b.emp_id
group by b.emp_id, b.emp_name
order by b.emp_id;
