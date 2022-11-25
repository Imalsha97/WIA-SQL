create table im_vehicle(
reg_no number,
make varchar2(100),
colour varchar2(100)
);

reate table im_person(
eno number,
name varchar2(100),
address varchar2(100)
);

create table im_owner(
eno number,
reg_no number
);


select name from im_vehicle v, im_person p, owner o
where v.reg_no = o.reg_no
And p.eno = o.eno
And make not in (select reg_no from im_vehicle);


select name from im_vehicle v, im_person p, im_owner o
where v.reg_no = o.reg_no
And p.eno = o.eno
And v.make = 'maruti';
