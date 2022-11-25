create table IMP_product(
product_id integer not null primary key,
category_id integer not null
);

create table IMP_purchase(
purchase_no integer not null primary key,
item_code integer not null,
purchase_qty integer,
purchase_date date,
foreign key(item_code) references IMP_product(product_id)
);

insert into IMP_product values(8001,150);
insert into IMP_product values(8002,160);
insert into IMP_product values(8003,160);
insert into IMP_product values(8004,150);
insert into IMP_product values(8005,160);






insert into IMP_purchase values(1001,8001,240,to_date('2019-12-17','yyyy-mm-dd'));
insert into IMP_purchase values(1002,8002,150,to_date('2019-12-17','yyyy-mm-dd'));
insert into IMP_purchase values(1003,8003,175,to_date('2020-11-15','yyyy-mm-dd'));
insert into IMP_purchase values(1004,8004,150,to_date('2019-12-17','yyyy-mm-dd'));
insert into IMP_purchase values(1005,8005,145,to_date('2019-12-05','yyyy-mm-dd'));
insert into IMP_purchase values(1006,8001,150,to_date('2020-01-05','yyyy-mm-dd'));
insert into IMP_purchase values(1007,8002,200,to_date('2020-01-15','yyyy-mm-dd'));
insert into IMP_purchase values(1008,8003,150,to_date('2020-01-17','yyyy-mm-dd'));
insert into IMP_purchase values(1009,8001,200,to_date('2019-01-28','yyyy-mm-dd'));
insert into IMP_purchase values(1010,8002,180,to_date('2020-02-07','yyyy-mm-dd'));
insert into IMP_purchase values(1011,8001,300,to_date('2020-02-25','yyyy-mm-dd'));
insert into IMP_purchase values(1012,8005,100,to_date('2020-01-27','yyyy-mm-dd'));

SELECT pur.month purchase_month,category_id, 
CASE WHEN category_average > distributor_average then 'increase'
     WHEN category_average < distributor_average then 'decrease'
     WHEN category_average = distributor_average then 'remain same'
END AS purchase_status
FROM 
    (SELECT SUBSTR(purchase_date,1,7) month,category_id,avg(purchase_qty) category_average
    FROM IMP_purchase i JOIN IMP_product p ON i.item_code = p.product_id
    group by 1,2) pur JOIN 
    (SELECT SUBSTR(purchase_date,1,7) month,avg(purchase_qty) distributor_average
    FROM IMP_purchase group by 1) dis 
    ON pur.month = dis.month;
