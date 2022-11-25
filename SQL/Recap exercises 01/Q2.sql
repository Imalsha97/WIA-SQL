create table s_Project(
p_no varchar2(30) primary key,
p_name varchar2(30),
p_incharge varchar2(30)
);

create table s_Employee
(
e_no varchar2(30) primary key,
e_name varchar2(30)
);

create table s_Assigned(
p_no varchar2(30),
e_no varchar2(30),
 constraints sp_fk foreign key(p_no) references s_Project(p_No),
 constraints se_fk foreign key(e_no) references s_Employee(e_No)
);

insert into s_Employee values(1,'limal');
insert into s_Employee values(2,'kamal');
insert into s_Employee values(3,'nimal');
insert into s_Employee values(4,'kasun');
insert into s_Employee values(5,'namal');

insert into s_Project values('DB2003','hh',1);
insert into s_Project values('DB2002','hh',1);
insert into s_Project values('DB2001','hh',3);
insert into s_Project values('DB2004','hh',1);
insert into s_Project values('DB2005','hh',4);

insert into s_Assigned values('DB2003',3);
insert into s_Assigned values('DB2002',5);
insert into s_Assigned values('DB2001',4);
insert into s_Assigned values('DB2005',1);

select * from s_Employee where e_no in(
select e_no from I_Assigned where p_no in
(select p_no from I_Project));

select * from s_Employee where e_no in(
select e_no from s_Assigned where p_no in
(select p_no from ss_Project where p_no not in "DB2003"));
