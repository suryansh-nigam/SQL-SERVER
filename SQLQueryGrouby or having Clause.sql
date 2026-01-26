
select * from Person;

--Write a query to display no of employees in each state from following PERSON table

select State, COUNT(*) as NumOfEmp from Person
group by State;


----------------
select * from Persons;
----------------
--Write a query to display the state wise gender wise no of employees from the following PERSONS table?
select State, Count(*) as NumOfEmpGender from Persons
Group by State ,Gender

--Write a query to display number of employees in each department from emp table using group by?
select * from emp;

select JOB, COUNT(*) as NumOfEmpDept from emp
group by Job;

--Write a query to display department wise and job wise number of employees  emp table using group by ?
Select Job, Deptno, COUNT(*) as NumOfEmpDeptJob from emp
group by Job, Deptno;

--Write a query to display department wise average salary from emp table by using group by ?
select Deptno, AVG(Sal) as AvgSalary from emp
group by Deptno;

--Write a query to display department wise minimum and maximum salary from emp using group by?
select Deptno, MIN(Sal) as MinSalary, MAX(Sal) as MaxSalary from emp
group by Deptno;

--Write a query to display those departments having more than 3 employees from emp table?
select Deptno, COUNT(*) as NumOfEmp from emp
group by Deptno
Having COUNT(*) > 3;

--Write a query to display those departments sum(sal) more than 9000 from emp table by using group by clause?
select Deptno, SUM(Sal) as TotalSalary from emp
group by Deptno
Having SUM(Sal) > 9000;

--Write a query to display each departments average salary, but show only departments whose average salary is greater than 2000.
select Deptno, AVG(Sal) as AvgSalary from emp
group by Deptno
Having AVG(Sal) > 2000;

--Write a query to display duplicate records from the following EMP111 table ?
select * from Emp111
group by EMPNO, ENAME

--Write a query to display year, no of employees per year in which year more than one employee was hired from emp table using group by?
select YEAR(HIREDATE) as HireYear, COUNT(*) as NumOfEmp from emp
group by YEAR(HIREDATE)
Having COUNT(*) > 1;

--Write a query to display no of employees joined in each QUARTER from emp table using group by?
select DATEPART(QUARTER, HIREDATE) as HireQtr, COUNT(*) as NumOfEmp from emp
group by DATEPART(QUARTER, HIREDATE);

--------------------

select * from EMP222;
--------------------

--Write a query to display state wise, region wise no of employees from the following EMP222 table ?
select STATE, REGION, COUNT(*) as NumOfEmp from EMP222
group by STATE, REGION;

--Write a query display LastName and the sum of Age from the emp333 table for all users with a LastName='Smith'.The column title of the summed ages should be SUMAGE.
select * from emp333

select LastName, SUM(Age) as SUMAGE from emp333
where LastName = 'Smith'
group by LastName;

--Write a query to display the number of employees who joined in the month of January or September from the EMP table using group by.
select MONTH(HIREDATE) as HireMonth, COUNT(*) as NumOfEmp from EMP
where MONTH(HIREDATE) IN (1, 9)
group by MONTH(HIREDATE);

--Write a query to display the total salary of employees in departments 10 and 30 from the EMP table using group by.
select Deptno, SUM(Sal) as TotalSalary from EMP
where Deptno IN (10, 30)
group by Deptno;

--------------------
Select * from Territory;
--------------------

--Write a SQL query to get the number of territories in each region based on regionid.The result should be in the increaing order of regionid
select REGIONID, COUNT(*) as NumOfTerritories from TERRITORY
group by REGIONID
order by REGIONID ASC;


















