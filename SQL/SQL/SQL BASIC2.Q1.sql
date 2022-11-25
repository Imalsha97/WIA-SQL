SELECT Name from Vender V
INNER JOIN Product P ON(V.V_code=P.P_code)
GROUP BY Name 
HAVING COUNT(*)>1

SELECT * FROM Product WHERE Price > (SELECT AVG(Price) FROM Product);

SELECT Name,Address,Phone FROM Vendor v
INNER JOIN Product p ON(v.v_code=p.p_code)
WHERE P.P_code IS NULL;
