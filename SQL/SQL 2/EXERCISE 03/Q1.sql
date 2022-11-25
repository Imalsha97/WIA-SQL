create table I_emp_details
(
emp_idno number primary key,
emp_fname varchar2(30),
emp_lname varchar2(30),
emp_dept number
);

insert into I_emp_details values(127323,'Michale','Robbin',57); 
insert into I_emp_details values(526689 ,'Carlos' ,'Snares ',63); 
insert into I_emp_details values(843795 ,'Enric',' Dosio ',57); 
insert into I_emp_details values(328717,' Jhon','Snares ',63); 
insert into I_emp_details values(444527 ,'Joseph ','Dosni' ,47); 
insert into I_emp_details values(659831,' Zanifer' ,'Emily', 47
); 
insert into I_emp_details values(847674 ,'Kuleswar' ,'Sitaraman' ,57); 
insert into I_emp_details values(748681 ,'Henrey' ,'Gabriel', 47); 
insert into I_emp_details values(555935 ,'alex' ,'Manuel', 57); 
insert into I_emp_details values( 539569 ,'George' ,'Mardy' ,27); 
insert into I_emp_details values(733843 ,'Mario' ,'Saule' ,63); 
insert into I_emp_details values(631548 ,'Alan' ,'Snappy' ,27); 
insert into I_emp_details values(839139 ,'Maria' ,'Foster' ,57); 

DELETE FROM I_emp_details WHERE emp_idno=843795;
 

select * from I_emp_details;

select emp_idno,emp_fname,emp_lname,emp_dept from
I_emp_details
where emp_lname like 'D%';

