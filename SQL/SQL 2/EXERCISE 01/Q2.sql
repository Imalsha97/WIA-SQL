create table I_Project(
p_no varchar2(30) primary key,
p_name varchar2(30),
p_incharge varchar2(30)
);

create table I_Employee
(
e_no varchar2(30) primary key,
e_name varchar2(30)
);

create table I_Assigned(
p_no varchar2(30),
e_no varchar2(30),
 constraints ip_fk foreign key(p_no) references I_Project(p_No),
 constraints ie_fk foreign key(e_no) references I_Employee(e_No)
);

insert into I_Employee values(1,'limal');
insert into I_Employee values(2,'kamal');
insert into I_Employee values(3,'nimal');
insert into I_Employee values(4,'kasun');
insert into I_Employee values(5,'namal');

insert into I_Project values('DB2003','hh',1);
insert into I_Project values('DB2002','hh',1);
insert into I_Project values('DB2001','hh',3);
insert into I_Project values('DB2004','hh',1);
insert into I_Project values('DB2005','hh',4);

insert into I_Assigned values('DB2003',3);
insert into I_Assigned values('DB2002',5);
insert into I_Assigned values('DB2001',4);
insert into I_Assigned values('DB2005',1);

select * from I_Employee where e_no in(
select e_no from I_Assigned where p_no in
(select p_no from I_Project));

select * from I_Employee where e_no in(
select e_no from I_Assigned where p_no in
(select p_no from I_Project where p_no not in "DB2003"));




