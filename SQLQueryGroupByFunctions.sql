-- GROUP FUNCTIONS
----------------------------
SELECT * FROM EMP;

-- Write a query to display total salary from emp table?
SELECT SUM(SAL) AS Total_Salary FROM EMP;

--Write a query to display total salaries of all managers from emp table?
SELECT SUM(SAL) AS Total_Manager_Salary FROM EMP WHERE MGR IS NOT NULL;

--Write a query to display average salary of all employees from emp table?
SELECT AVG(SAL) AS Average_Salary FROM EMP;

--Write a query to display maximum salary from emp table?
SELECT MAX(SAL) AS Maximum_Salary FROM EMP;

--Write a query to display minimum salary from emp table?
SELECT MIN(SAL) AS Minimum_Salary FROM EMP;

--Write a query to display maximum and minimum salary from emp table?
SELECT MAX(SAL) AS Max_Sal, MIN(SAL) AS Min_Sal FROM EMP;

--Write a query to display total number of employees from emp table?
SELECT COUNT(*) AS Total_Emp FROM EMP;

--Write a query to display total number of managers from emp table?

SELECT COUNT(*) AS Tot_Mgr FROM EMP where JOB = 'Manager';

--Write a query to display the no of employees in 10,30 departments from emp table?
SELECT COUNT(*) AS Tot_Emp FROM EMP WHERE DEPTNO IN (10,30);

--.Write a query to display the no of employees in 4th quarter from emp table?
SELECT COUNT(*) AS Tot_Emp_4th_Qtr FROM EMP WHERE DATEPART(QUARTER, HIREDATE) = 4;

--Write a query to display how many employees are getting commission from emp table?
SELECT COUNT(COMM) AS COMMISION FROM EMP WHERE COMM IS NOT NULL

--What is the output of the following statement

--select Max(100,200) 

--A. 100  
   
--B. 100,200

--C. 200       
    
--D. Error

--Select Max(100,200)
-- ERROR, The Max function requires 1 argument(s).


-----------------------------------
CREATE TABLE FLIGHT 
(
FLIGHT_ID INT,
DEPARTURE_DATE DATE
);

INSERT INTO FLIGHT VALUES (101, '2023-01-10');
INSERT INTO FLIGHT VALUES (102, '2023-01-25');
INSERT INTO FLIGHT VALUES (103, '2023-02-02');
INSERT INTO FLIGHT VALUES (104, '2023-02-10');
INSERT INTO FLIGHT VALUES (105, '2023-03-05');

SELECT * FROM FLIGHT
----------------------------

--Count the number of shows scheduled after 1st feb 2023
SELECT COUNT(*) AS NUMBER_OF_SHOWS FROM FLIGHT WHERE DEPARTURE_DATE > '2023-02-01';

--15.A table T_COUNT has 12 number values as 1,2,3,32,1,1,null,24,12,null,null,32

--predict the output of the below query

--select count(*) from T_count;

--A. 6

--B. 12            
    
--C. 9

--D. Throws exception because COUNT function doesn't work with null values

--Answer : 12