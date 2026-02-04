/*
-------------------------------------
Joining more than 2 tables:
select *
from table1 join table2 
on table1.key=table2.key
join table3
on table2.key=table3.key
---------------------------------
*/
---------------------------------------------------------------------------------

SELECT * FROM STUDENT;
SELECT * FROM COURSE;
SELECT * FROM FEE;

--Write an SQL query to fetch student names and course names, order by student ID, returning only the first 6 records.
select top 6 s.STUDENT_NAME, c.COURSE_NAME
from STUDENT s
join FEE f on
s.STUDENT_ID = f.STUDENT_ID
join COURSE c 
on f.COURSE_FEE = c.COURSE_FEE
order by s.STUDENT_ID;

---------------------------------
SELECT * FROM SEATS;
SELECT * FROM SEATCATEGORIES;
SELECT * FROM STADIUM;

--Write a query to display SEAT_NUMBER(use alias SEATNO),CATEGORY_NAME(use alias CATEGORYNAME) of seat in stadium EDEN GARDENS and display the output in the order of descending order of seat number
select s.SEAT_NUMBER as SEATNO, sc.CATEGORY_NAME as CATEGORYNAME
from SEATS s
join SEATCATEGORIES sc
	on s.CATEGORY_ID = sc.CATEGORY_ID
join STADIUM st
	on s.STADIUM_ID = st.STADIUM_ID
where st.STADIUM_NAME = 'EDEN GARDENS'
order by s.SEAT_NUMBER desc;

---------------------------------
select * from EMPLOYEES1;
select * from PROJECTS;

--Write a query to display the employee names and their corresponding project names from the given tables.
select e.ENAME as EmpName, p.PNAME as ProjName
from EMPLOYEES1 e
join PROJECTS p
on e.EMPID = p.EMPID;

--Write a query to display all employees and projects from employees1,projects tables
select e.ENAME as EmpName, p.PNAME as ProjName
from EMPLOYEES1 e
left join PROJECTS p
on e.EMPID = p.EMPID;

--Write a query to display the employees who are not assigned project from employees1,projects tables
select e.ENAME as EmpName
from EMPLOYEES1 e
left join PROJECTS p
on e.EMPID = p.EMPID
where p.PNAME is null;

--Write a query to display unassigned projects from employees1,projects tables
select p.PNAME as ProjName
from PROJECTS p
left join EMPLOYEES1 e
on e.EMPID = p.EMPID
where e.ENAME is null;

--Write a query to display employees and all projects from employees1,projects tables
select e.ENAME as EmpName, p.PNAME as ProjName
from EMPLOYEES1 e
full outer join PROJECTS p
on e.EMPID = p.EMPID;

--Write a query to display all employees and all projects from employees1,projects tables
select e.ENAME as EmpName, p.PNAME as ProjName
from EMPLOYEES1 e
right join PROJECTS p
on e.EMPID = p.EMPID;









