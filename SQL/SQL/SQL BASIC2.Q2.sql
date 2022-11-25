SELECT CNAME FROM CUSTOMER WHERE C# IN
 (SELECT C# FROM ORDER
 MINUS
 SELECT C# FROM ORDER, ITEM
 WHERE ORDER I# = ITEM.I# AND WEIGHT <=1000);
 
SELECT CNAME FROM CUSTOMER WHERE C# IN
(SELECT C# FROM ORDER WHERE I# IN
(SELECT I# FROM ITEM WHERE PRICE > 500));

SELECT O# , SUM(QUANTITY*PRICE)
FROM ORDER,ITEM WHERE ORDER I#= ITEM I# 
GROUP BY O#;