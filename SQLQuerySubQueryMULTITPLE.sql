/*

SUBQUERY (MULTIPLE)
--------------------
--Jab inner query (child query) ek se zyada values return karti hai, tab use Multiple Row Subquery kehte hain

in   ----->it returns same values in list

>all ----->it satisfies all values in the list


>any ----->it satisfies any values in the list


  whenever we are using subquery special operators all then database
servers internally uses logical operator AND. where as when we are 
using subquery special operator any then database servers internally
uses logical operator OR. 
*/


--Write a query to display the employee records whose job title is  same as SMITH,BLAKE from emp table?
select * from emp
where job in (select job from emp where ename in ('SMITH','BLAKE'));

--Write a query to display the male employees who are getting more salary than the all the salaries of female employees?
---------------------
select * from emp666;
---------------------
select * from emp666
where gender = 'M' and sal > all 
(select sal from emp666 where gender = 'F');

--Write a query to display the employee records who are getting more salary than the salaries of all managers from emp table?

--NOTE:-if sal> all list of values then condition is true
select * from emp
where sal > all (select sal from emp where job = 'MANAGER');

--Write a query to display the employees records who are getting more salary than the salaries of any of the manager from emp table?

--NOTE:-if sal>any one of the list of values.
select * from emp
where sal > any (select sal from emp where job = 'MANAGER');

--Write a query to display the employees who are getting more salary than the any salary of 10th department from emp table ?
select * from emp
where sal > any (select sal from emp where DEPTNO= 10);

