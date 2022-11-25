create table ImaaWorker(
worker_id number primary key,
first_name varchar2(30),
last_name varchar2(30),
salary number,
joining_date date,
department varchar2(30)
);

select * from  ImaaWorker;

INSERT INTO ImaaWorker (worker_id, first_name,last_name, salary, joining_date, department) VALUES
(001, 'Monika', 'Arora', 100000, to_date('2014-02-20 09.00.00','yyyy-mm-dd hh24.mi.ss'), 'HR');


CREATE TABLE Ima_Bonus (
Worker_ref_id NUMBER,
bonus_amount NUMBER,
bonus_date date,
FOREIGN KEY (Worker_ref_id)
REFERENCES ImWorker(worker_id)
);

INSERT INTO Ima_Bonus
(Worker_ref_id, bonus_amount, bonus_date ) VALUES
(001, 5000, '16-02-20'),
(002, 3000, '16-06-11'),
(003, 4000, '16-02-20'),
(001, 4500, '16-02-20'),
(002, 3500, '16-06-11');



INSERT INTO ImWorker (worker_id, first_name,last_name, salary, joining_date, department) VALUES
(001, 'Monika', 'Arora', 100000, '2014-02-20 09.00.00', 'HR');


CREATE TABLE Im_Title (
WORKER_REF_ID NUMBER,
WORKER_TITLE VARCHAR2(15),
AFFECTED_FROM DATETIME,
FOREIGN KEY (WORKER_REF_ID)REFERENCES ImWorker(WORKER_ID)
);



INSERT INTO I_Worker (WORKER_ID, FIRST_NAME,LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
(007, 'Satish', 'Kumar', 75000, to_date('2014-01-20 09.00.00','yyyy-mm-dd hh24.mi.ss'), 'Account');
