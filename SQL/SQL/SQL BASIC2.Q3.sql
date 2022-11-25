CREATE TABLE IM_STUDENTS(ROLL NUMBER PRIMARY KEY,
NAME VARCHAR2(30),
CITY VARCHAR2(30),
MOBILE VARCHAR2(30)
);
INSERT INTO IM_STUDENTS VALUES
(17,'Ankit','Delhi','9891663808');

INSERT INTO IM_STUDENTS VALUES
(16,'Vivek','Meerut','9891468487');
INSERT INTO IM_STUDENTS VALUES
(61,'Vanita','Punjab','9804521224');
INSERT INTO IM_STUDENTS VALUES
(75,'Bhavya','Delhi','9810618396');
INSERT INTO IM_STUDENTS VALUES
(70,'Kawya','Punjab','9810617788');
INSERT INTO IM_STUDENTS VALUES
(19,'Ratnakumar','Meerut','9810687122');

select * from IM_STUDENTS;


CREATE TABLE IM_MARKS(
ROLL NUMBER,
COURSE VARCHAR2(30),
MARKS NUMBER,
CONSTRAINT im_fk FOREIGN KEY(ROLL) REFERENCES IM_STUDENTS(ROLL)
);



insert into IM_MARKS values(16,'C',93);
insert into IM_MARKS values(16,'VB',56);
insert into IM_MARKS values(17,'C',85);
insert into IM_MARKS values(17,'VB',67);
insert into IM_MARKS values(19,'C',NULL);
insert into IM_MARKS values(19,'DBMS',45);
insert into IM_MARKS values(61,'C',50);
insert into IM_MARKS values(61,'VB',NULL);
insert into IM_MARKS values(61,'DBMS',78);
insert into IM_MARKS values(70,'c',88);
insert into IM_MARKS values(70,'DBMS',47);
insert into IM_MARKS values(70,'VB',65);
insert into IM_MARKS values(75,'VB',90);
insert into IM_MARKS values(75,'DBMS',88);

select * from IM_MARKS;



SELECT NAME FROM IM_STUDENTS WHERE NAME LIKE 'V%';
SELECT COUNT(ROLL) FROM IM_STUDENTS GROUP BY CITY;
SELECT NAME FROM IM_STUDENTS WHERE ROLL IN 
(SELECT ROLL FROM MARKS WHERE COURSE="DBMS" AND 
MARKS ORDER BY DEC LIMIT 1);

SELECT NAME MAX(MARKS) FROM IM_STUDENTS S,IM_MARKS M 
WHERE S.ROLL=M.ROLL AND COURSE="DBMS";

SELECT 
      'For' || m.COURSE ||', STUDENT '|| s.NAME || ' has grade: '|| CASE
      WHEN m.marks <= 100 and m.marks >= 75 then 'A' 
    WHEN m.marks < 75 and m.marks >= 60 then 'B'
    WHEN m.marks < 60 and m.marks >= 50 then 'C'
      ELSE 'F'
        END AS Grade_details 
FROM IM_MARKS m, IM_STUDENTS s
where s.ROLL = m.ROLL
ORDER BY m.COURSE;





