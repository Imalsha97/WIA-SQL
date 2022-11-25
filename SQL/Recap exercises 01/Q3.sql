CREATE TABLE sr_Patients(
Pat_ID number NOT NULL PRIMARY KEY,
Pat_Name VARCHAR2(100),
Address  VARCHAR2(100),
Age number
)


CREATE TABLE sr_Doctors(
Doc_ID number NOT NULL PRIMARY KEY,
Doc_Name VARCHAR2(100),
Specialization VARCHAR2(100),
Room_No number
)


CREATE TABLE sr_Tests(
Test_ID number NOT NULL PRIMARY KEY,
text_Name VARCHAR2(100),
test_Result VARCHAR2(100),
Check_in DATE,
Check_out DATE
)


Select * from sr_Patients;
INSERT INTO sr_Patients values (1, 'Sunil', 'Kandy', 20);

Select * from sr_Doctors;
INSERT INTO sr_Doctors values (1, 'Perera', 'Eye', 102);

select * from sr_Tests;
INSERT INTO sr_Tests values (1, 'ECG', 'Normal', TO_DATE('2014-04-11','yyyy/mm/dd'), 
sTO_DATE('2014-04-11','yyyy/mm/dd');





