create table I_Worker(
WORKER_ID number primary key,
FIRST_NAME varchar2(30),
LAST_NAME varchar2(30),
SALARY number,
JOINING_DATE date,
DEPARTMENT varchar2(30)
);

select * from I_Worker;

INSERT INTO I_Worker (WORKER_ID, FIRST_NAME,LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
(001, 'Monika', 'Arora', 100000, to_date('2014-02-20 09.00.00','yyyy-mm-dd hh24.mi.ss'), 'HR');

INSERT INTO I_Worker (WORKER_ID, FIRST_NAME,LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
(002, 'Niharika', 'Verma', 80000, to_date('2014-06-11 09.00.00','yyyy-mm-dd hh24.mi.ss'), 'Admin');

INSERT INTO I_Worker (WORKER_ID, FIRST_NAME,LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
(003, 'Vishal', 'Singhal', 300000, to_date('2014-02-20 09.00.00','yyyy-mm-dd hh24.mi.ss'), 'HR');

INSERT INTO I_Worker (WORKER_ID, FIRST_NAME,LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
(004, 'Amitabh', 'Singh', 500000, to_date('2014-02-20 09.00.00','yyyy-mm-dd hh24.mi.ss'), 'Admin');

INSERT INTO I_Worker (WORKER_ID, FIRST_NAME,LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
(005, 'Vivek', 'Bhati', 500000, to_date('2014-06-11 09.00.00','yyyy-mm-dd hh24.mi.ss'), 'Admin');

INSERT INTO I_Worker (WORKER_ID, FIRST_NAME,LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
(006, 'Vipul', 'Diwan', 200000, to_date('2014-06-11 09.00.00','yyyy-mm-dd hh24.mi.ss'), 'Account');

INSERT INTO I_Worker (WORKER_ID, FIRST_NAME,LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
(007, 'Satish', 'Kumar', 75000, to_date('2014-01-20 09.00.00','yyyy-mm-dd hh24.mi.ss'), 'Account');

INSERT INTO I_Worker (WORKER_ID, FIRST_NAME,LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
(008, 'Geetika', 'Chauhan', 90000, to_date('2014-04-11 09.00.00','yyyy-mm-dd hh24.mi.ss'), 'Admin');



select * from I_Worker;

select * from I_Worker;


