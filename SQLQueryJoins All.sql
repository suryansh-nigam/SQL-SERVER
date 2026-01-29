---LEFT, RIGHT, OUTER, FULL JOIN

/*
left outer join:-This join returns all rows from left side table
================  and matching rows from right side table. And also
                  this join returns null values in place of non matching rows
                  in another table.

Execution:-
==========
left outer join=====>inner join + left side table remaining
                                  records(here left side table
                                               is main table)




Right outer join:-This join returns all rows from right side table
================  and matching rows from left side table and also
                  returns null values in place of non matching rows
                  in another table.


execution:-
==========
Right outer join=====>inner join + right side table remaining
                                   records(here right side table
                                           is main table)



full outer join:-This join returns all rows from both the tables
================ because it is combination of left and right outer
                 joins.this join also returns null values in place 
                 of non matching rows in another table.

full outer join ---->inner join + left side table remaining rows +right
                                  side table remaining rows

*/

SELECT * FROM EMPLOYEES;

SELECT * FROM DEPARTMENTS;
-----------------------------------

--Write a query to display employee names and their department names from employees,departments table
SELECT E.ENAME AS Emp_Name, D.DNAME AS Dept_Name
FROM EMPLOYEES E
JOIN DEPARTMENTS D ON E.DEPTNO = D.DEPTNO;

--Write a query to display all employees and their department names, including employees who are not assigned to any department from EMPLOYEES,DEPARTMENTS tables.
SELECT E.ENAME AS Emp_Name, D.DNAME AS Dept_Name
FROM EMPLOYEES E
LEFT JOIN DEPARTMENTS D ON E.DEPTNO = D.DEPTNO;

--Write a query to display all departments and their employees. Include departments that have no employees from EMPLOYEES,DEPARTMENTS tables. 
SELECT D.DNAME AS Dept_Name, E.ENAME AS Emp_Name
FROM DEPARTMENTS D
LEFT JOIN EMPLOYEES E ON D.DEPTNO = E.DEPTNO;

--Write a query to display employee details with dept details and also display employees Not assigned to any deptno and also the departments which are empty ?
SELECT E.ENAME AS Emp_Name, D.DNAME AS Dept_Name
FROM EMPLOYEES E
FULL OUTER JOIN DEPARTMENTS D ON E.DEPTNO = D.DEPTNO;



--Write a query to fetch all employee records from the employee details table who have a salary record in the employee salary table

select * from EMPLOYEE_DETAILS

select * from EMPLOYEE_SALARY
--------------------------------
SELECT ed.EMPID, ed.NAME, es.SALARY
FROM EMPLOYEE_DETAILS ed
JOIN EMPLOYEE_SALARY es ON ed.EMPID = es.ID;

----------------------------------
SELECT * FROM COURIER;
SELECT * FROM COURIER_STATUS;

--Write a query to display the courier details such as COURIER_ID, FROM_ADDRESS, TO_ADDRESS and the STATUS of the couriers Deliveredin the month of JANUARY.sort the records based on to_address in ascending order
SELECT c.COURIER_ID, c.FROM_ADDRESS, c.TO_ADDRESS, cs.STATUS
FROM COURIER c
JOIN COURIER_STATUS cs ON c.COURIER_ID = cs.COURIER_ID
WHERE MONTH(cs.ACTUAL_DELIVERED_DATE) = 1
ORDER BY c.TO_ADDRESS ASC;

-----------------------------------
--Describe in these two tables what is o/p of inner join,left outer join ,right outer join,full outer join

-------------------
SELECT * FROM test10 
SELECT * FROM test20


SELECT * FROM t1
select * from t2
-----------------------------------
--Inner Join
SELECT a.sno
FROM t1 a
INNER JOIN t2 b ON a.sno = b.sno;

--left outer join
SELECT a.sno
FROM t1 a
LEFT JOIN t2 b ON a.sno = b.sno;

--right outer join
SELECT a.sno
FROM t1 a
RIGHT JOIN t2 b ON a.sno = b.sno;

--Full outer join
SELECT a.sno
FROM t1 a
FULL JOIN t2 b ON a.sno = b.sno;









