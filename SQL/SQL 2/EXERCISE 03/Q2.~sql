create table I_salesman(
salesman_id number primary key,
name varchar2(30),
city varchar2(30),
commission number
);

create table IS_customer
(
customer_id number primary key,
cust_name varchar2(30),
city varchar2(30),
grade number,
salesman_id number,
constraints icus_fk foreign key(salesman_id) references I_salesman(Salesman_Id)
);

create table IS_order(
ord_no number primary key,
purch_amt number,
ord_date date,
customer_id number,
salesman_id number,
constraint icu_fk foreign key(customer_id) references IS_customer(Customer_Id),
constraint isa_fk foreign key(salesman_id) references I_salesman(Salesman_Id)
);


insert into I_salesman values(5001 ,'James Hoog','New York' , 0.15);
insert into I_salesman values(5002 ,' Nail Knite' , 'Paris ' , 0.13);
insert into I_salesman values(5005 ,' Pit Alex ','London' , 0.11);
insert into I_salesman values(5006 ,'Mc Lyon' , 'Paris' , 0.14);
insert into I_salesman values(5007 ,'Paul Adam ', 'Rome ' , 0.13);
insert into I_salesman values(5003 ,' Lauson Hen' ,'San Jose' , 0.12);


insert into IS_customer values(3002,'Nick Rimando' ,'New York' ,100 ,5001);
insert into IS_customer values(3007,'Brad Davis' ,'New York' ,200 ,5001);
insert into IS_customer values(3005,'Graham Zusi' , 'California' ,200 ,5002);
insert into IS_customer values(3008,'Julian Green ',' London ' ,300 ,5002);
insert into IS_customer values(3004,'Fabian Johnson' ,'Paris' ,300 ,5006);
insert into IS_customer values(3009,' Geoff Cameron' ,' Berlin' ,100 ,5003);
insert into IS_customer values(3003,' Jozy Altidor'  ,'Moscow' ,200 ,5007);
insert into IS_customer values(3001,' Brad Guzan' , 'London ' ,null ,5005);

insert into IS_order values(70001 , 150.5 ,to_date('2012-12-05 09.00.00','yyyy-mm-dd hh24.mi.ss') ,3005 ,5002);
insert into IS_order values(70009, 270.65, to_date('2012-09-10 09.00.00','yyyy-mm-dd hh24.mi.ss') ,3001 ,5005);
insert into IS_order values(70002 ,65.26 ,to_date('2012-10-05 09.00.00', 'yyyy-mm-dd hh24.mi.ss') ,3002 ,5001);
insert into IS_order values(70004 ,110.5, to_date('2012-08-17 09.00.00', 'yyyy-mm-dd hh24.mi.ss'), 3009, 5003);
insert into IS_order values(70007 ,948.5 ,to_date('2012-09-10 09.00.00', 'yyyy-mm-dd hh24.mi.ss'), 3005 ,5002);
insert into IS_order values(70005 ,2400.6 ,to_date('2012-07-27 09.00.00', 'yyyy-mm-dd hh24.mi.ss') ,3007 ,5001);
insert into IS_order values(70008 ,5760 ,to_date('2012-09-10 09.00.00', 'yyyy-mm-dd hh24.mi.ss') ,3002, 5001);
insert into IS_order values(70010 ,1983.43, to_date('2012-10-10 09.00.00', 'yyyy-mm-dd hh24.mi.ss') ,3004 ,5006);
insert into IS_order values(70003 ,2480.4 ,to_date('2012-10-10 09.00.00', 'yyyy-mm-dd hh24.mi.ss') ,3009, 5003);
insert into IS_order values(70012 ,250.45 ,to_date('2012-06-27 09.00.00', 'yyyy-mm-dd hh24.mi.ss'), 3008 ,5002);
insert into IS_order values(70011 ,75.29 ,to_date('2012-08-17 09.00.00', 'yyyy-mm-dd hh24.mi.ss') ,3003, 5007);
insert into IS_order values(70013 ,3045.6 ,to_date('2012-04-25 09.00.00', 'yyyy-mm-dd hh24.mi.ss') ,3002, 5001);

SELECT *
FROM IS_customer a,IS_order  b 
WHERE a.customer_id=b.customer_id 
AND b.ord_date=to_date('2012-10-05 09.00.00', 'yyyy-mm-dd hh24.mi.ss');

select * from IS_order where salesman_id in
(select salesman_id from I_salesman where name='Paul Adam');


SELECT *
FROM IS_order
WHERE salesman_id =
    (SELECT salesman_id 
     FROM I_salesman 
     WHERE name='Paul Adam');
     
SELECT salesman_id, customer_id
FROM IS_customer
UNION 
(SELECT salesman_id, customer_id
FROM IS_order)


