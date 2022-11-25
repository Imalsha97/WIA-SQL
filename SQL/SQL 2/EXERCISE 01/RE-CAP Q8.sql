select * from Coustomer where c# in
(select c# from order where i# in
(select i# from item where weight > 1000));

select cname from Coustomer where c# in
(select c# from order where i# in
(select i# from item where price > 500)); 

CREATE VIEW orders AS
SELECT
    order_id,
    SUM(Quantity * price) total
FROM
   Order o,Item i
    where i.I# = o.I#
    GROUP by o#;
