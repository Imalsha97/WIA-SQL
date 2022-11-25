create table sr_vehicle(
reg_no number,
make varchar2(100),
colour varchar2(100)
);

reate table sr_person(
eno number,
name varchar2(100),
address varchar2(100)
);

create table sr_owner(
eno number,
reg_no number
);


select name from sr_vehicle v, sr_person p, owner o
where v.reg_no = o.reg_no
And p.eno = o.eno
And make not in (select reg_no from sr_vehicle);


select name from sr_vehicle v, sr_person p, sr_owner o
where v.reg_no = o.reg_no
And p.eno = o.eno
And v.make = 'maruti';
