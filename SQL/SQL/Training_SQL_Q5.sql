create table Product_Imalsha(
product_id Number Primary key,
product_name varchar2(30)
);

insert into Product_Imalsha values(1001,'Bananas');
insert into Product_Imalsha values(1002,'Apples');
insert into Product_Imalsha values(1003,'Pears');
insert into Product_Imalsha values(1004,'Oranges');

select * from Product_Imalsha;



SELECT LISTAGG(product_name, ', ') WITHIN GROUP (ORDER BY product_name) "Product_Listing" FROM Product_Imalsha;

