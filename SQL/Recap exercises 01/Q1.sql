create table sr_product(
p_code number not null primary key,
descripton varchar2(100),
stocking_date date,
qtyonhand number,
minqty number,
price number,
discount number,
v_code number
)

select * from sr_product;
insert into sr_product values(1, 'ball', to_date('2020-01-01','yyyy/mm/dd'), 3 ,1 ,200 ,20 ,1);
insert into sr_product values(2, 'bag', to_date('2020-01-01','yyyy/mm/dd'), 4,2,200,20,2);
insert into sr_product values(3, 'doll', to_date('2020-01-01','yyyy/mm/dd'), 5,2,200,20,3);



create table sr_vendor(
v_code number not null primary key,
vendor_name varchar2(20),
address varchar2(50),
phone number
)

select * from sr_vendor;
insert into sr_vendor values(1, 'kamal', '123 Kandy', 0777777777);
insert into sr_vendor values(2, 'Nimal', '123 Kandy', 0777777777);
insert into sr_vendor values(3, 'Amal', '123 Kandy', 0777777777);

SELECT vendor_name FROM sr_vendor 
INNER JOIN sr_product ON sr_vendor.v_code=sr_product.v_code 
GROUP BY vendor_name 
HAVING COUNT(*)>1

SELECT * 
FROM sr_product c
WHERE price> (SELECT AVG(price) FROM sr_product)


SELECT vendor_name, address, phone 
FROM sr_vendor 
where v_code not in (select v_code from sr_product)
