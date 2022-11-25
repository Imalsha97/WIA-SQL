create table I_units(
unitindex char(8) not null primary key,
unitname varchar2(30),
creditpoints integer
);

create table I_students(
stuid char(8) not null primary key,
firstname varchar(15),
lastname varchar(15) not null,
birthdate date

);
drop table I_students;

create table I_enrollments(
student char(8) ,
unit char(8) not null,
yearNumber number,
mark number,

constraint fk_student_im foreign key(student) references I_students(stuid),
constraint fk_units_im foreign key(unit) references I_units(unitindex),
constraint I_enrollments Primary Key (student, unit, yearNumber)

);

insert into I_units values('1','DBMS',4);
insert into I_units values('2','OOP',4);
insert into I_units values('3','NETWORK',16);
insert into I_units values('4','CTSE',2);


select * from I_units;


insert into I_students values('1','Monica','Mendis',TO_DATE('1997-02-20 09:00:00','yyyy-mm-dd hh24:mi:ss'));
insert into I_students values('2','Fred','Perera',TO_DATE('1999-01-22 09:00:00','yyyy-mm-dd hh24:mi:ss'));
insert into I_students values('3','Nick','Bern',TO_DATE('1998-04-25 09:00:00','yyyy-mm-dd hh24:mi:ss'));
insert into I_students values('4','Shreck','Tinckle',TO_DATE('1999-11-1 09:00:00', 'yyyy-mm-dd hh24:mi:ss'));

insert into I_enrollments values('1','1',4,75);
insert into I_enrollments values('1','2',4,85);
insert into I_enrollments values('2','3',2,75);
insert into I_enrollments values('2','4',2,95);
insert into I_enrollments values('2','1',4,65);
insert into I_enrollments values('3','4',4,95);

select unitname from I_units u, I_enrollments e
where u.unitindex=e.unit 
group by unitname
having count(unit)<10;

select lastname,count(unit) from I_students s,I_enrollments e
where s.stuid=e.student and mark>75
group by lastname;

create view studentsByUnit_IM as
select count(student) as student_count,u.unitname,e.yearNumber
from I_enrollments e,I_units u
where e.unit = u.unitindex
group by u.unitname,e.yearNumber;

select * from studentsByUnit_IM;

select student_count,unitname
from studentsByUnit_IM
where unitname = 'DBMS' and yearNumber = 2013;


ALTER TABLE I_units
ADD stuCount number;

UPDATE I_units SET stuCount = 2 where stuCount=1;
UPDATE I_units SET stuCount = 1 where stuCount=2;
UPDATE I_units SET stuCount = 1 where stuCount=3;
UPDATE I_units SET stuCount = 2 where stuCount=4;






