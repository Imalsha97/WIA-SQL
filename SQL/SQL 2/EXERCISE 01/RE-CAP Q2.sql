SELECT * FROM EMPLOYEE WHERE E_NO IN
(SELECT E_NO FROM ASSIGNED_TO WHERE P_NO IN
(SELECT P_NO FROM PROJECT ));


SELECT E_NO FROM EMPLOYEE WHERE E_NO IN
(SELECT E_NO FROM ASSIGNED_TO WHERE P_NO IN
(SELECT P_NO FROM PROJECT WHERE P_NO="DB2003"));
