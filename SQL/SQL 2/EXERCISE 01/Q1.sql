create table I_Vendor(
v_code number primary key,
name varchar2(30),
address varchar2(30),
phone varchar(30)
);

create table I_Product
(
p_code number primary key,
description varchar2(30),
stocking_date date,
qtyOnHand number,
minqty number,
price number(10,2),
discount number(10,2),
v_code number, 
constraint imp_fk foreign key(v_code) references I_Vendor(v_Code)
);

select * from I_Product;
select * from I_Vendor;

insert into I_Vendor values(1,'Amal','matara','0178788');
insert into I_Vendor values(2,'Akal','galle','8744659');
insert into I_Vendor values(3,'rmal','colombo','0178788');
insert into I_Vendor values(4,'lmal','ragama','0178788');
insert into I_Vendor values(5,'Akal','galle','8744659');

insert into I_Product values(55,'uehh',to_DATE('2014-02-20 09.00.00','yyyy-mm-dd hh24.mi.ss'),20,10,5000,200,2);
insert into I_Product values(56,'ujjjjehh',to_DATE('2014-02-25 09.00.00','yyyy-mm-dd hh24.mi.ss'),20,10,5000,200,1);
insert into I_Product values(57,'hhhh',to_DATE('2014-02-20 09.00.00','yyyy-mm-dd hh24.mi.ss'),20,10,5000,200,3);
insert into I_Product values(58,'hhhh',to_DATE('2014-02-20 09.00.00','yyyy-mm-dd hh24.mi.ss'),20,10,5000,200,5);
insert into I_Product values(59,'hhhh',to_DATE('2014-02-20 09.00.00','yyyy-mm-dd hh24.mi.ss'),20,10,50000,200,5);
insert into I_Product values(60,'hhhh',to_DATE('2014-02-20 09.00.00','yyyy-mm-dd hh24.mi.ss'),20,10,5000,200,null);
insert into I_Product values(61,'hhhh',to_DATE('2014-02-20 09.00.00','yyyy-mm-dd hh24.mi.ss'),20,10,5000,200,null);

select name
from I_Vendor v 
INNER JOIN I_Product p ON v.v_code=p.p_code
Group by name
having count(*)>1;


SELECT * FROM I_Product
WHERE price > (SELECT AVG(price) FROM I_Product); 

select name,address,phone from I_Vendor where v_code in
(select v_code from I_Product where v_code is null);









