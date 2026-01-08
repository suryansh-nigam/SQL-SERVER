------------LIKE OPERATOR---------------------

select * from emp;

--display the employees whose ename start with S from emp table using like operator?
select * from emp where ENAME like 'S%';


--display the employees whose ename end with S from emp table using like operator?
select * from emp where ENAME like '%S';

--display the employees whose empno start with 76 from emp table by using like operator?
select * from emp where EMPNO like '76%';

--display the employees whose ename contain M in any position from emp table by using like operator?
select * from emp where ENAME like '%M%';

--display the employee records whose name 2nd character is A?
select * from emp where Ename like '_A%';

--display the employee records whose name 3rd character is M?
select * from emp where Ename like '__M%';

--display the employee records whose name has 4 letters from emp table by using like operator?
select * from emp where Ename like '____';


--display the employee records whose name started and ended with S?
select * from emp where ENAME like '%S%';


--display the employees who are joining in the year 1981 from emp table using like operator?
select * from emp where HIREDATE like '1981%';

--display the employees whose name contain either 'AM' or 'AR' strings from emp table by using like operator
select * from emp where 
Ename like '%AM%' 
OR Ename like '%AR%';

--display the employee records whose name starting with VOWEL?
SELECT * FROM emp WHERE ENAME LIKE 'A%' 
   OR ENAME LIKE 'E%' 
   OR ENAME LIKE 'I%' 
   OR ENAME LIKE 'O%' 
   OR ENAME LIKE 'U%';

--------------------USING LIKE, AND, OR----------------------------------

CREATE TABLE EMP555
(
ENAME VARCHAR(20)
);

INSERT INTO EMP555 VALUES('SIRISHA GAYATRI');
INSERT INTO EMP555 VALUES('GAYATRI SIRISHA');
INSERT INTO EMP555 VALUES('ANUSHKA SHETTY');
INSERT INTO EMP555 VALUES('ANU SIRISHA RAI');
INSERT INTO EMP555 VALUES('SURYA SURYA');

SELECT * FROM EMP555;


-- Write an SQL query to retrieve all employee names from the table EMP555 that contain the word 'SIRISHA' ?
select * from EMP555 where ENAME like '%SIRISHA%';

--display employees who are working as either 'MANAGER' or 'CLERK' and earning salary between 1500 and 3000 and joined in the year 1981 and are not working in departments 10 or 20 from EMP table ?
select * from emp where
(Job Like '%Manager%' OR
Job Like '%Clerk%') AND 
(SAL BETWEEN 1500 AND 3000) AND
(HIREDATE LIKE '1981%') AND 
DEPTNO NOT LIKE '%10%'AND
DEPTNO NOT LIKE '%20%'


----------------ALIAS NAME-------------------------

CREATE TABLE STAFF (
    STAFF_ID INT,
    FIRST_NAME VARCHAR(10),
    LAST_NAME VARCHAR(10),
    POSITION VARCHAR(10),
    SALARY MONEY
);

INSERT INTO STAFF VALUES(1, 'ANUSHKA', 'SHETTY', 'MANAGER', 60000);
INSERT INTO STAFF VALUES(2, 'KIRAN', 'KUMAR', 'DEVELOPER', 48000);
INSERT INTO STAFF VALUES(3, 'GOWTHAM', 'RAJ', 'TEAM LEAD', 75000);
INSERT INTO STAFF VALUES(4, 'KAVYA', 'PAPA', 'HR', 51000);
INSERT INTO STAFF VALUES(5, 'PREETI', 'ZINTA', 'CLERK', 30000);


SELECT * FROM STAFF;

--display ENAME as (use aliasname EMPLOYEE_FIRST_NAME),SAL,JOB from EMP table and whose salary is greater than 2000
select Ename as EMPLOYEE_FIRST_NAME, Sal, Job from emp where Sal > 2000;  


--display the first name(use alias name staff first name ),position and salary of staff members where salary is greater than 50000 ?
select First_Name as Staff_First_Name, Position, Salary from staff where SALARY > 5000;


------------------------------------------------------------
CREATE TABLE USERS (
    USER_ID INT,
    NAME VARCHAR(15),
    EMAIL VARCHAR(20),
    PHONE_NUMBER VARCHAR(10)
);

INSERT INTO USERS VALUES(1, 'ANUSHKA', 'anushka@gmail.com', '9876526229');         
INSERT INTO USERS VALUES(2, 'GOWTHAM', 'gowtham@gmail.com', '9912347810');
INSERT INTO USERS VALUES(3, 'SURYA',   'surya@gmail.com',   '9988776629'); 
INSERT INTO USERS VALUES(4, 'KAVYA PAPA','kavya@gmail.com', '9988776655');


SELECT * FROM USERS;

--display the NAME(use alias USERNAME) and their email (use alias EMAILID) of users who have a phone number ending with '29' from the USERS table?
select  Name as USERNAME, Email as EMAILID from users where PHONE_NUMBER like '%29';


