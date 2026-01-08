select * from emp

select * from dept


-- Relational Operators
------------------------------------

-- all the managers
select * from emp where Job = 'Manager'

-- display the employee records whose salary is 3000 from emp table.

select * from emp where Sal = 3000;

-- display the employees who are getting more than 2000 salary from emp table?
select * from emp where Sal > 2000;

-- display the employees whose salary is 3000 or more from emp table.
select * from emp where Sal >= 3000;

-- display the employees who are belongs to 10th department from emp table?
select * from dept where deptno = 10;

-- display the employee record whose name is SMITH from emp table.
select * from emp where Ename = 'Smith';

--display the employees except job as CLERK from emp table?
select * from emp where Job != 'CLERK';

-- Table Customer123
CREATE TABLE CUSTOMER123 (
    CUSTOMER_ID INT,
    NAME VARCHAR(10),
    GENDER CHAR(1),
    PHONE VARCHAR(10),
    EMAIL VARCHAR(20),
    DISTRICT VARCHAR(10),
    STATE VARCHAR(10)
);


INSERT INTO CUSTOMER123 VALUES(201,'SURYA','M','9876543210','surya@gmail.com','Kolar','Karnataka');
INSERT INTO CUSTOMER123 VALUES(202,'ANUSHKA','F','9123456780','anushka@gmail.com','Kolar','Karnataka');
INSERT INTO CUSTOMER123 VALUES(203,'GOWTHAM','M','9988776655','gowtham@gmail.com','Kolar','Karnataka');
INSERT INTO CUSTOMER123 VALUES(204,'PRIYA','F','9012345678','priya@gmail.com','Bangalore','Karnataka');
INSERT INTO CUSTOMER123 VALUES(205,'KIRAN','M','9001122334','kiran@gmail.com','Kolar','Karnataka');
INSERT INTO CUSTOMER123 VALUES (206,'KAVYA','F','9345678901','kavya@gmail.com','Mysore','Karnataka');

Select * from CUSTOMER123;

--  SQL query to list the CUSTOMER_ID, NAME, GENDER, and PHONE of all
  -- customers who belong to the district 'Kolar'

Select CUSTOMER_ID, NAME, GENDER,PHONE from CUSTOMER123 where DISTRICT = 'Kolar';

-- display the employee records who joined on 17th December 1980 from emp table?

select * from emp where Hiredate = '1980-12-17';

--display the employee records who joined after 1981 from emp table?
select * from emp where Hiredate > '1980-12-17';

-- display the employee records who joined before 1981 from emp table?
select * from emp where Hiredate < '1980-12-17';

-- display the employees who are getting more than 30000 annsal from emp table?
select * from emp where Sal > 3000;


-- Logical Operators
--------------------------------------

--display the employees whose clerks are getting more than 1000 salary from emp table?

select * from emp where Job = 'Clerk' AND Sal > 1000;

-- display the employees whose clerks are belongs to 20th department from emp table?
select * from emp where Job = 'Clerk' AND deptno =20;

--display the employees whose job is CLERK or SALESMAN or MANAGER from emp table?
select * from emp where Job = 'Clerk' OR Job =  'SALESMAN' OR Job =  'MANAGER';

--display the employees who are belongs to 20,30,50,70,90 departments from emp table?
select * from emp where deptno = 20 
OR deptno = 30
OR deptno = 50
OR deptno = 70
OR deptno = 90;

-- display the employee records whose salary  between 2450 and 3000 from emp table?
select * from emp where Sal between 2450 AND 3000;

--------------------------------------------------------------

Create table student12(
SNO INT, SNAME VARCHAR(30), SUB1 INT, SUB2 INT, SUB3 INT);

INSERT INTO student12 VALUES
(1,'GOWTHAM', 72,18,24),
(2,'KAVYA', 60,50,45),
(3,'PREETHI',12,30,25),
(4,'KIRAN', 80,88,74);

SELECT * FROM student12

-- A student is passed only if they score 35 or more in all 3 subjects

select * from student12 where 
SUB1 >= 35 AND
SUB2 >= 35 AND
SUB3 >= 35;

--A student is failed if they score less than 35 in any one subject
select * from student12 where 
SUB1 < 35 AND
SUB2 < 35 AND
SUB3 < 35;

---------------------------------------------------

-- Arithmetic operators
------------------------------

--display ename, sal, annsal from emp table?
select ename, sal from emp;

--Calculate TA,HRA,TAX and NETSAL from emp table based on  following conditions?

--10% on sal=>TA
--20% on sal=>HRA
--5% on sal =>TAx
--NETSAL =SAL+TA+HRA-TAX

select Sal*0.1 as TA, Sal*0.2 as HRA, Sal*0.25 as TAX, Sal*0.1+SAL*0.2+Sal*0.25 as NETSAL from emp 


--display the all employee salaries after adding 1200 rupees?

select *, sal+1200 as NewSal from emp;

