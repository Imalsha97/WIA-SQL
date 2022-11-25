create table srr_physician(
rgno number,
phyname varchar2(100),
addr varchar2(100),
phno varchar2(11),
primary key (rgno)
);

create table srr_patient(
ptname varchar2(100),
ptaddr varchar2(100),
primary key (ptname)
);

create table patient_visits (
rgno references srr_physician(rgno), 
ptname varchar2(15) references srr_patient(ptname), 
date_of_visit date, 
fee_charged number, 
CONSTRAINT patient_visits primary key(rgno, ptname)
)





create assertion assert
check ((select SUM(fee_charged) from patient_visits 
where ptname = :new.ptname and rgno = :new.rgno) <= 1000;


create view all_patient_visits (ptname,times) 
AS select ptname, count(ptname) from patient_visits GROUP BY ptname;


select * from srr_patient where ptname in (
patient_visits A, patient_visits B where A.ptname = B.ptname 
and A.rgno <> B.rgno and A.date_of_visit between TO_DATE('01-MAY-2000') 
and TO_DATE('31-MAY-2000')) ORDER BY ptname
