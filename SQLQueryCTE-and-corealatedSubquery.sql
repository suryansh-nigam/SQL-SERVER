-----CTE(COMMON TABLE EXPRESSION)-----
/*
syntax:-
======
With CTE as
(
subquery
)
select * from CTE
*/

----------------------------------------------------------------------------
select * from emp111

--Write a query to delete duplicate records from following EMP111 table by using CTE ?
WITH CTE AS
(
select empno, ename,ROW_NUMBER() over (partition by ename order by empno)r
from EMP111
)
delete from CTE where r > 1;

--------------------------------------------------------------------------
--CORELATED SUBQUERYS
--=====================

--Write a query to display 2nd highest salary employee from emp table by using corelated subquery ?
select * from emp e1
where 2=(select count(distinct(sal)) from emp e2
where e2.sal>=e1.sal);

--Write a query to display employees who are getting more salary then the average salary of their departments from emp table by using corelated subquery ?
select * from emp e
where sal>(select avg(sal) from emp
where deptno=e.deptno);

