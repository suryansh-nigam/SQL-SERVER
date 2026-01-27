select * from emp

--Write a query to display the names and salaries of employees,sorted by salary in descending order from EMP table?
SELECT ENAME, SAL  from emp ORDER BY SAL DESC;

--Write a query to display all employee names in alphabetical order ?
SELECT ENAME from emp ORDER BY ENAME ASC;

--Write a query to display the all employee records and arrange them according to seniority ?
SELECT * from emp ORDER BY HIREDATE ASC;

--Display the employee records arrange them in ascending order according to department, If multiple employees are in the same department ,sort them by salary in descending order with in the department.
SELECT * from emp ORDER BY DEPTNO ASC, SAL DESC;

-- Write a query to display FirstName,LastName and Age from the emp333 table for all users who are above the age of 25 order by ID in ascending order.
select FirstName, LastName, Age from emp333 where AGE > 25 order by ID ASC;

------------------------
select * from Flights;
------------------------

--The flight_id,departure_date,departure_location and destination of flights departing after 2024-02-06 sort the result by departure time in asending order ?
SELECT FLIGHT_ID, DEPARTURE_DATE, DEPARTURE_LOCATION, DESTINATION from Flights
WHERE DEPARTURE_DATE > '2024-02-06'
ORDER BY DEPARTURE_DATE ASC;

---------------------------------------

select * from emp444
---------------------------------------
--Write the query to display the emp_first_name and emp_last_name as emp_fullname and year of birth and sort them based on their desending age.NOTE:-By default Calender order is ascending order.

--SELECT emp_first_name + ' ' + emp_last_name AS emp_fullname, YEAR(GETDATE()) - YEAR(birthdate) AS Year_of_Birth
--FROM emp444 
--ORDER BY Year_of_Birth DESC;


--show all the jobs in the EMP table
SELECT DISTINCT JOB from EMP;

--Write a query to list all unique departments numbers from EMP table ?
SELECT DISTINCT DEPTNO from EMP;

/*
10.Which of the following is the correct order of execution of following clauses
  *   in a SELECT statement[V.V.I.M.P]

a) FROM → SELECT → WHERE → GROUP BY → HAVING → ORDER BY

b) WHERE → FROM → GROUP BY → HAVING → SELECT → ORDER BY

c) FROM → WHERE → GROUP BY → HAVING → SELECT → ORDER BY

d) SELECT → HAVING → GROUP BY → WHERE → ORDER BY → FROM


--Answer: C

  *
*11*Which of the following order is valid in writing SELECT query[V.V.I.M.P]
  *
a) SELECT → FROM → WHERE → GROUP BY → HAVING → ORDER BY

b) SELECT → FROM → GROUP BY → WHERE → HAVING → ORDER BY

c) SELECT → FROM → WHERE → HAVING → GROUP BY → ORDER BY

d) SELECT → FROM → HAVING → GROUP BY → WHERE → ORDER BY

--Answer: A

*/

-------------
--TOP CLAUSE
-------------

--Write a query to display first 5 rows from emp table by using TOP clause?
SELECT TOP 5 * from emp;

--Write a query to display top 3 highest salaries from emp table
SELECT TOP 3 SAL from emp ORDER BY SAL DESC;

--Write a query to display senior most employee details from emp table? 
SELECT TOP 1 * from emp ORDER BY HIREDATE ASC;












