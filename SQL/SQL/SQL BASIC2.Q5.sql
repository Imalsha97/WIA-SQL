CREATE TABLE IM_Employee ( 
Emp_No NUMBER(20), 
Emp_Email VARCHAR2(100)
);
insert into IM_Employee values(20,'imalsha@gamil.com');

SELECT Emp_Email FROM IM_Employee
WHERE Emp_Email IS NOT NULL
AND NOT REGEXP_LIKE(Emp_Email,'^[a-zA-Z0-9._%-]+@[a-zA-Z0-9._%-]+\.[a-zA-Z]{2,4}$')
