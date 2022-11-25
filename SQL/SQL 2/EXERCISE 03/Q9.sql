create table IMP_emp(
eno number not null primary key,
ename varchar2(30),
bdate date,
title varchar2(30),
dno number,
foreign key(dno) references IMP_dept(Dno)
);

create table IMP_proj(
pno number not null primary key,
pname varchar2(30),
budget number,
dno number,
foreign key(dno) references IMP_dept(Dno)
);

create table IMP_dept(
dno number primary key,
dname varchar2(30),
mgreno number
);

create table IMP_workson(
eno number constraint FOREIGN KEY REFERENCES IMP_emp(eno),
pno number constraint FOREIGN KEY REFERENCES IMP_proj(pno),
resp varchar2(30),
hours number,
constraint IMP_workson primary key(eno,pno)
);


select pno,pname from IMP_proj where budget>100000;

select * from IMP_workson where hours<10 and resp='Manager';

select eno,ename from IMP_employee 
where (title='EE' or title='SA') and salary > 35000;

select ename from IMP_emp
where dno='D1'
order by salary desc;

select * from IMP_dept
order by dname asc;

select ename,dname,title from IMP_emp e,IMP_dept d
where e.dno=d.dno;

select pname,hours,pno from IMP_proj p,IMP_workson w
where p.pno=w.pno and w.hours>10;

select p.pname,d.dname,d.budget from IMP_proj p,IMP_dept d
where p.dno=d.dno p.budget<50000;

select eno,salary from IMP_emp where eno in
(select eno from IMP_dept where dname='Consulting')
ORDER BY salary DESC ;

SELECT ename, pname, title, hours
FROM IMP_emp e, IMP_proj p, IMP_workson w
WHERE e.eno = w.eno and p.pno = w.pno;



