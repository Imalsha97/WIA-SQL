CREATE TABLE PHYSICIAN(
RGNO NUMBER PRIMARY KEY,
PHYNAME VARCHAR2(30),
ADDR VARCHAR2(30),
PHONE VARCHAR(30)
);

CREATE TABLE PATIENT(
PTNAME VARCHAR2(30) PRIMARY KEY,
PTADDR VARCHAR2(30),
);

CREATE TABLE VISITS(
RGNO NUMBER PRIMARY KEY,
PTNAME VARCHAR2(30),
DATEOFVISIT DATE,
FEES_CHARGED VARCHAR(30),
FOREIGN KEY(RGNO) REFERENCES PHYSICIAN(RGNO),
FOREIGN KEY(PTNAME) REFERANCES PATIEN(PTNAME)
);

CREATE ASSERTION FEES_CHARGE
CHECK(NOT EXISTS(SELECT * FROM PATIEN,VISITS
WHERE FEES_CHARGED > 1000
AND PATIEN.PTNAME=VISITS.PTNAME));

CREATE VIEW PATIENT_VISITS(NAME,TIMES)
AS SELECT NAME,COUNT(*)
FROM PATIENT,VISITS
WHERE P.PTNAME=V.PTNAME
GROUP BY DATEOFVISIT;

SELECT PTNAME,PTADDR,COUNT(*) PHYSICIAN_COUNT FROM VISITS,PHYSICIAN
WHERE PHYSICIAN.RGNO = VISITS.RGNO AND DATEOFVISIT BETWEEN 2000.5.1 AND 2000.5.31
GROUP BY PHISICIAN.RGNO 
HAVING PHYSICIAN_COUNT >1
ORDER BY PTNAME;




