
-----------Test---------

select * from emp111;

--Q1- Write a query to display duplicate records from the following EMP111 table? 
select ENAME, count(*) from emp111 group by ENAME having count(*) > 1;

--Q2-Write a query to display the state wise gender wise no of employees from the PERSONS table? 
select * from PERSONS;

select STATE, GENDER, count(*) from PERSONS group by STATE, GENDER;

--Q3-Write a query to display Department Number, Number of Employees, Total Salary and  Average Salary from EMP table?
select * from emp;
select DEPTNO, count(*), sum(SAL), avg(SAL) from EMP group by DEPTNO;

--Q4-Write a query to display each department total salary, but show only those departments whose total salary is greater than 9000?
select DEPTNO, sum(SAL) from EMP group by DEPTNO having sum(SAL) > 9000;

--Q5-Write a query to display the employee’s records who joined in 1980, 1982, 1984 from EMP table by using DATEPART function?
select * from emp;

select * from emp where DATEPART(year, HIREDATE) IN (1980, 1982, 1984);

--Q6A-Write a query to display the first 3 characters of each employee name from the EMP table
select ENAME, LEFT(ENAME, 3) as First3Chars from EMP;

--Q6B-Write a query to display maximum and minimum salary from EMP table?
select max(SAL) as MaxSal, min(SAL) as MinSal from EMP;

--Q7A-Write a query to display top 3 highest salaries from EMP table?
select top 3 SAL from EMP order by SAL desc;

--Q7B.Display all job titles from the EMP table?
select distinct JOB from EMP;

--Q8-Write a query to display the employees who are working in the location CHICAGO from EMP, DEPT tables
select * from emp;
select * from dept;

select * from emp e join dept d 
on e.DEPTNO = d.DEPTNO where d.LOC = 'CHICAGO';

--Q9-Write a query to display the employee records who are reporting to BLAKE as their manager by using self join from EMP table 
select * from emp;

select * from emp e1
join emp e2 
on e1.MGR = e2.EMPNO where e2.ENAME = 'BLAKE';


--Q10-Write a query to display all employees and their department names,including employees who are not assigned to any department from the EMPLOYEES, DEPARTMENTS tables. 
select * from EMPLOYEES;
select * from DEPARTMENTS;

select * from EMPLOYEES e 
left join DEPARTMENTS d 
on e.deptno = d.deptno;

--Q11-Write a query to display employees who are not assigned to any department from the EMPLOYEES, DEPARTMENTS tables 
select * from EMPLOYEES e
left join DEPARTMENTS d
on e.deptno = d.deptno
where d.deptno is null;

--Q12. Write a query to display all departments and their employees. Including departments that have no employees from the EMPLOYEES,DEPARTMENTS tables.
select * from EMPLOYEES e
right join DEPARTMENTS d on e.deptno = d.deptno;

--Q13A.Update the job as MANAGER and increase 20% on salary for all employees whose names start with 'A' and end with 'S' from EMP1 table?
Update emp1 set job = 'MANAGER', sal = sal * 1.2
where ename like 'A%S';

--Q13B.Delete the employee records whose salary is less than 1200 from EMP1 table?
Delete from EMP1 where sal < 1200;

--Q14.Write a query to display the animal's name(use alias animal_name),species, gender, and caretaker's full name(use alias caretaker_name)for all male animals. The full name should be create by combining the first name and last name with a space between them. 

select * from animal;
select * from Animal_caretaker;
select * from Caretaker;


select a.name as animal_name, a.species, a.gender, 
concat(c.first_name, ' ', c.last_name) as caretaker_name
from animals a
join Animal_caretaker b
on a.animal_id = b.animal_id
join caretakers c
on a.caretaker_id = c.id
where a.gender = 'Male';





















