create table I_customer(
c# number primary key,
cname varchar2(30),
address varchar2(30)
);
create table I_item(
i# number primary key,
iname varchar2(30),
price number,
weight number
);
create table I_order(
o# number primary key,
c# number,
i# number,
qty number,
constraints co_fk foreign key(c#) references I_customer(C#),
constraints imt_fk foreign key(i#) references I_item(I#)
);


select cname from I_customer where c# in
(select c# from I_order where i# in
(select i# from I_item where weight<=1000));

select cname from I_customer where c# in
(select c# from I_order where i# in
(select i# from I_item where price>500));

create view oder(o#,totalcost)as
select o#,sum(qty*price)
from I_order o,I_item i
where o.i#=i.i#
group by o#;


