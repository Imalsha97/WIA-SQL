create table Iphysician
(
rgno varchar2(30) primary key,
phyname varchar2(30),
addr varchar2(30),
phno varchar2(30)
);

create table Ipatient(
ptname varchar2(30) primary key,
ptaddr varchar2(30)
);

drop table Ipatient;
create table Ivisit(
rgno varchar2(30) references Iphysician(rgno),
ptname varchar2(30) references Ipatient(ptname),
dateofvisit date,
feescharged number,
constraint Ivisit_pk primary key(rgno,ptname) 
);

insert into Iphysician values('001','ajith','kelaniya','779997');
insert into Iphysician values('002','rjith','dehiwala','448799');
insert into Iphysician values('003','pjith','horana','16695997');

insert into Ipatient values('kamal','ragam');
insert into Ipatient values('naml','dalugama');
insert into Ipatient values('vikum','thoppe');

insert into Ivisit values('002','naml',TO_DATE('2000-05-20 09.00.00','yyyy/mm/dd hh24:mi:ss'),500);
insert into Ivisit values('003','kamal',TO_DATE('2000-05-23 09.00.00','yyyy/mm/dd hh24:mi:ss'),300);
insert into Ivisit values('001','naml',TO_DATE('2000-06-20 09.00.00','yyyy/mm/dd hh24:mi:ss'),200);
insert into Ivisit values('001','naml',TO_DATE('2000-05-20 09.00.00','yyyy/mm/dd hh24:mi:ss'),200);

create ASSERTION
check ((select sum(feescharged) from Ivisit
where ptname=:NEW.ptname and rgno=:NEW.rgno) <= 1000);


create view I_patient_visit(name,times) as 
select ptname,count(ptname) from Ivisit
group by ptname;


select ptname from Ivisit v,Ipatient p,Iphysician ph
where v.ptname=p.ptname and ph.rgno=v.rgno
and v.dateofvisit between TO_DATE('01-MAY-2000') AND 
TO_DATE('31-MAY-2000') ORDER BY ptname;

