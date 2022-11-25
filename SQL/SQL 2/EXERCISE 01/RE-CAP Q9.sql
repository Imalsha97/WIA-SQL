SELECT Ename from Employee where e# in
(select e# from Dependent where d# in
(select d# from Department));

select Ename from Employee where d# in
(select d# from Department where Dname="research");

select * from Employee where salary > (select avg(salary) from Employee);

Update Employee set salary = salary + salary*0.1;

select * from Employee where d# in 
(select d# from Department where Location="Delhi");

Update Department set Location="Mumbai" where Location="Bombay";

