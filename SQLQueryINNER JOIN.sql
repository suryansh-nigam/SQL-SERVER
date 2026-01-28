select * from emp;
select * from dept;

----------------------------
--JOINS
----------------------------

--Write a query to display the employee names and their department names from emp, dept tables.
SELECT e.ENAME AS EmpName, d.DNAME AS DeptName
FROM EMP e
JOIN DEPT d ON e.DEPTNO = d.DEPTNO;

--Write a query to display the employee names and their locations from emp, dept tables
SELECT e.ENAME AS EmpName, d.LOC AS Location
FROM EMP e
JOIN DEPT d ON e.DEPTNO = d.DEPTNO;


--Write a query to display the employees who are working in the location CHICAGO from emp, dept tables by using inner join?
SELECT e.ENAME AS EmpName, d.LOC AS Location
FROM EMP e
JOIN DEPT d ON e.DEPTNO = d.DEPTNO
WHERE d.LOC = 'CHICAGO';

--Write a query to display no of employees in each location from emp, dept tables by using inner join?
SELECT d.LOC AS Location, COUNT(e.EMPNO) AS NumofEmp
FROM EMP e
JOIN DEPT d ON e.DEPTNO = d.DEPTNO
GROUP BY d.LOC;

--Write a query to display department names and sum of salaries and whose sum of salaries is more than 9000 from emp,dept tables
SELECT d.DNAME AS DeptName, SUM(e.SAL) AS TotSal
FROM EMP e
JOIN DEPT d ON e.DEPTNO = d.DEPTNO
GROUP BY d.DNAME
HAVING SUM(e.SAL) > 9000;

--Write a query to display blake employee record along with department details from emp, dept tables?
SELECT e.*, d.*
FROM EMP e
JOIN DEPT d ON e.DEPTNO = d.DEPTNO
WHERE e.ENAME = 'BLAKE';

----------------------------------
--select * from studentenrollment;
--Select * from faculty;
----------------------------------
--Write a query to display student names and their corresponding faculty names from studentenrollment and faculty tables
SELECT s.SNAME AS StudentName, f.FNAME AS FacultyName
FROM studentenrollment s
JOIN faculty f ON s.FID = f.FID;

--Write query to display the students names and along with their faculty name,subject,age. Show only the students who are assigned to faculty that teach the subject 'ORACLE' from the above 2 tables
SELECT s.SNAME AS StuName, f.FNAME AS FacName, f.SUBJECT, f.AGE
FROM studentenrollment s
JOIN faculty f ON s.FID = f.FID
WHERE f.SUBJECT = 'ORACLE';

--Write an SQL query to display the student names(whose names start with 'S') along with their faculty name, subject, and age. Return only the records where the faculty teaches the subject 'ORACLE'and their age between 35 and 40 from the above 2 tables.
SELECT s.SNAME AS StuName, f.FNAME AS FacName, f.SUBJECT, f.AGE
FROM studentenrollment s
JOIN faculty f ON s.FID = f.FID
WHERE f.SUBJECT = 'ORACLE' AND f.AGE BETWEEN 35 AND 40 AND s.SNAME LIKE 'S%';

--Write query to display the students names and along with their faculty name,subject,age.Show only the students who are assigned to faculty that teach the subject 'CORE JAVA'
SELECT s.SNAME AS StuName, f.FNAME AS FacName, f.SUBJECT, f.AGE
FROM studentenrollment s
JOIN faculty f ON s.FID = f.FID
WHERE f.SUBJECT = 'COREJAVA';

--------------------------
SELECT * FROM PASSENGER;

SELECT * FROM BOARDINGPASS;
--------------------------

--Write a SQL query to display[Cognizant Interview Question] The first_name and last_name and contact information of all passengers who have a boarding pass for a flight ID 5 and having Gluten-free meal preference from the following PASSENGER & BOARDINGPASS tables
SELECT p.PASSENGER_ID, p.FIRST_NAME, p.LAST_NAME, p.CONTACT
FROM PASSENGER p
JOIN BOARDINGPASS b ON p.PASSENGER_ID = b.PASSENGER_ID
WHERE b.FLIGHT_ID = 5 AND b.MEAL = 'Gluten-free';














