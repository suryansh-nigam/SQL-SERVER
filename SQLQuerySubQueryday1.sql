-------------------------
--SUB-QUERIES
-------------------------

/*
Query within another query is called as Subquery or Nested query.
Subquerys are used to retrieve data from single or multiple tables by using
more than one step process. 


     All relational databases having two types of subquerys.
These are.

   1)Non Correlated subquerys
   2)Correlated subquerys


   In Non corelated subquery child query is executed first then
only parent query is executed, where as in correlated subquery
parent query is executed first then only child query is executed.

1)Non Correlated subquery:-
============================
Non Corelated subquerys having two parts.
1)Child query
2)Parent query

1)child query:- A query which provides values to another query
==============   is called child query or inner query.


2)parent query:- A query which receives values from another query 
================= is called parent query or outer query.


.In non-correlated subquery maximum limit is up to 255 queries.


NON CORELATED SUBQUERY:-
=========================
        |
        |----------->1)single row sub query
        |----------->2)multiple row sub query
        |----------->3)multiple column sub query
        |----------->4)Derived Table(or)subquery are used in from
                       clause.



1)single row subquerys
=======================
    When child query returns single value then those querys are 
called single row subquerys. In single row sub query's we are 
using =,<,>,<=,>=, between operators.


RULES:-
=======
1)90%    --------->Same column
2)5%     --------->Group function
3)3%     --------->Expressions
4)2%     --------->Different column

                                       
select * from emp where condition=(select ............)

      
EG:-
===
SQL> select max(sal) from emp where sal<(select max(sal) from emp);

        Display mechanism in              Task in right hand
         left hand side                        side  

*/

---------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT * FROM EMP;

--Write a query to display the employees who are getting more salary than the average salary from emp table?
SELECT * FROM EMP WHERE SAL > (SELECT AVG(SAL) FROM EMP);

--Write a query to display senior most employee details from emp table?
SELECT * FROM EMP WHERE HIREDATE = (SELECT MIN(HIREDATE) FROM EMP);

--Write a query to display the employees who are getting more salary than the highest paid employee in 20th department from emp table?
SELECT * FROM EMP WHERE SAL > (SELECT MAX(SAL) FROM EMP WHERE DEPTNO = 20);

--Write a query to display the employees who are getting more salary than the lowest paid employee in 10th department from emp table?
SELECT * FROM EMP WHERE SAL > (SELECT MIN(SAL) FROM EMP WHERE DEPTNO = 10);

--Write a query to display the employees who are working same as SMITH department number from emp table?
SELECT * FROM EMP WHERE DEPTNO = (SELECT DEPTNO FROM EMP WHERE ENAME = 'SMITH');

--Write a query to display the employee records who are earning more salary than the BLAKE salary?
SELECT * FROM EMP WHERE SAL > (SELECT SAL FROM EMP WHERE ENAME = 'BLAKE');

--Write a query to display the employee records whose job title is same as ALLEN?
SELECT * FROM EMP WHERE JOB = (SELECT JOB FROM EMP WHERE ENAME = 'ALLEN');

--Write a query to display 2nd maximum salary (or) 2nd highest salary from emp table?
SELECT SAL AS MaxSal FROM EMP WHERE SAL = (SELECT MAX(SAL) FROM EMP WHERE SAL < (SELECT MAX(SAL) FROM EMP));

--Find the employee whose salary is maximum from EMP table.
SELECT * FROM EMP WHERE SAL = (SELECT MAX(SAL) FROM EMP);

--Write a query to display 2nd maximum salary employee details from emp table?
SELECT * FROM EMP WHERE SAL = (SELECT MAX(SAL) FROM EMP WHERE SAL < (SELECT MAX(SAL) FROM EMP));