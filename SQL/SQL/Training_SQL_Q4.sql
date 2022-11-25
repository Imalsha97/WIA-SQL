create table Employee_Imalsha
(Ename varchar2(20),employee_id varchar2(20),manager_id varchar2(20));

insert into Employee_Imalsha
values('Amit','1','10');
commit;
insert into Employee_Imalsha
values('Rakesh','10','2');
commit;
insert into Employee_Imalsha
values('Anmol','3','2');
commit;
insert into Employee_Imalsha
values('Karbhari','2',null);
commit;
insert into Employee_Imalsha
values('rohit','4','10');
commit;


select * from Employee_Imalsha;

SELECT e.employee_id as Emp_Id, e.Ename as Employee,
m.employee_id as Mgr_Id, m.Ename as Manager 
FROM Employee_Imalsha e 
join Employee_Imalsha m 
ON (e.manager_id = m.employee_id);


