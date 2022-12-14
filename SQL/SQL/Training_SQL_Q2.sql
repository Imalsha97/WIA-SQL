CREATE TABLE I_Bonus (
WORKER_REF_ID NUMBER,
BONUS_DATE DATE,
BONUS_AMOUNT NUMBER,
FOREIGN KEY (WORKER_REF_ID)
REFERENCES I_Worker(WORKER_ID)
);

select * from I_Bonus;


INSERT INTO I_Bonus
(WORKER_REF_ID,BONUS_DATE,BONUS_AMOUNT) VALUES
(001,to_date('2016-02-20 09.00.00','yyyy-mm-dd hh24.mi.ss'), 5000);

INSERT INTO I_Bonus
(WORKER_REF_ID,BONUS_DATE,BONUS_AMOUNT) VALUES
(002,to_date('2016-06-11 09.00.00','yyyy-mm-dd hh24.mi.ss'), 3000);

INSERT INTO I_Bonus
(WORKER_REF_ID,BONUS_DATE,BONUS_AMOUNT) VALUES
(003,to_date('2016-02-20 09.00.00','yyyy-mm-dd hh24.mi.ss'), 4000);

INSERT INTO I_Bonus
(WORKER_REF_ID,BONUS_DATE,BONUS_AMOUNT) VALUES
(001,to_date('2016-02-20 09.00.00','yyyy-mm-dd hh24.mi.ss'), 4500);

INSERT INTO I_Bonus
(WORKER_REF_ID,BONUS_DATE,BONUS_AMOUNT) VALUES
(002,to_date('2016-06-11 09.00.00','yyyy-mm-dd hh24.mi.ss'), 3500);

CREATE TABLE I_Title (
WORKER_REF_ID NUMBER,
WORKER_TITLE VARCHAR2(15),
AFFECTED_FROM DATE,
FOREIGN KEY (WORKER_REF_ID)REFERENCES I_Worker(WORKER_ID)
);

INSERT INTO I_Title (WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES
(001, 'Manager',to_date('2016-02-20 00.00.00','yyyy-mm-dd hh24.mi.ss'));

INSERT INTO I_Title (WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES
(002, 'Executive',to_date('2016-06-11 00.00.00','yyyy-mm-dd hh24.mi.ss'));

INSERT INTO I_Title (WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES
(008, 'Executive',to_date('2016-06-11 00.00.00','yyyy-mm-dd hh24.mi.ss'));

INSERT INTO I_Title (WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES
(005, 'Manager',to_date('2016-02-20 00.00.00','yyyy-mm-dd hh24.mi.ss'));

INSERT INTO I_Title (WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES
(004, 'Asst. Manager',to_date('2016-06-11 00.00.00','yyyy-mm-dd hh24.mi.ss'));

INSERT INTO I_Title (WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES
(007, 'Executive',to_date('2016-06-11 00.00.00','yyyy-mm-dd hh24.mi.ss'));

INSERT INTO I_Title (WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES
(006, 'Lead',to_date('2016-06-11 00.00.00','yyyy-mm-dd hh24.mi.ss'));

INSERT INTO I_Title (WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES
(003, 'Lead',to_date('2016-06-11 00.00.00','yyyy-mm-dd hh24.mi.ss'));

SELECT UPPER(FIRST_NAME) FROM I_Worker;
SELECT DISTINCT DEPARTMENT FROM I_Worker;
SELECT DISTINCT DEPARTMENT ,length(DEPARTMENT) FROM I_Worker;
SELECT REPLACE(FIRST_NAME,'a','A') FROM I_Worker;
SELECT CONCAT(FIRST_NAME , ' ' , LAST_NAME) AS Name FROM I_Worker;
SELECT * FROM I_Worker WHERE FIRST_NAME LIKE '%a%';
SELECT FIRST_NAME FROM I_Worker WHERE  SALARY >= 50000 AND SALARY <=100000;
SELECT * FROM I_Worker W JOIN I_Title T ON W.WORKER_ID = T.WORKER_REF_ID AND T.WORKER_TITLE='Manager';
SELECT FIRST_NAME  FROM I_Worker W JOIN I_Title T ON W.WORKER_ID = T.WORKER_REF_ID AND T.WORKER_TITLE='Manager';
SELECT WORKER_TITLE, AFFECTED_FROM, COUNT(*)
FROM I_Title
GROUP BY WORKER_TITLE, AFFECTED_FROM
HAVING COUNT(*) > 1;
SELECT DEPARTMENT, sum(SALARY) from I_Worker group by DEPARTMENT;
SELECT * FROM I_Worker WHERE DEPARTMENT NOT IN  'HR';
SELECT WORKER_TITLE,BONUS_AMOUNT FROM I_Title T, I_Bonus B WHERE T.WORKER_REF_ID=B.WORKER_REF_ID;





