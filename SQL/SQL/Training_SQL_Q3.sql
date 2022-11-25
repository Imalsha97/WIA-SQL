Select GetDate() AS 'CurrentDATETime' form dates;

SELECT
EXTRACT(YEAR FROM date) AS year,
EXTRACT(MONTH FROM date) AS month
FROM date;

SELECT FORMAT(GETDATE(),'dd/MM/yyyy hh:mm:ss');

