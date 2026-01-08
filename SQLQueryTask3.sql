select * from emp;

-- display the employees who are belongs to 20,30,50,70,90 departments from emp table by using in operator.

select * from emp where DEPTNO in(20,30,50,70,90);

--display whose enames are SMITH,JONES,KING from emp table by using in operator?
select * from emp where Ename IN('SMITH','JONES','KING');

--display the employee records whose employee numbers are 7902,7788,7900 from emp table by using in operator?
select * from emp where EMPNO IN(7902,7788,7900);

--display the employee records whose salary is 1250,3000,5000 from emp table?
select * from emp where Sal IN(1250,3000,5000);

-- display the employee who are belongs to other than 10,20 departments form the emp table
select * from emp where DEPTNO NOT IN(10,20);

--display the employee records except MANAGER and CLERK from emp table?
select * from emp where Job NOT IN('Manager','Clerk');

---------------------------------------------

-- Between Operator

---------------------------------------------

-- display the employees who are getting salary  between 2000 to 5000 from emp table by using Between operator? 
select * from emp where Sal Between 2000  AND 5000

--display the employees who are getting salary  not between 2000 - 5000 from emp table by using Between operator?
select * from emp where Sal Not between 2000 AND 5000

-- display the employee records who joined in 1982 from emp table?
select * from emp where HIREDATE BETWEEN '1982-01-01' AND '1982-12-31'

--display the employee records except joined in 1981 from emp table?
select * from emp where HIREDATE NOT BETWEEN '1981-01-01' AND '1981-12-31'

--------------------------------------
-- IS NULL or NOT NULL
--------------------------------------

--display the employees who are not getting commission from emp table? 
select * from emp where COMM IS NULL

-- display the employees who are getting commission from emp table? 
select * from emp where COMM IS NOT NULL

--display the employee record who are not having the manager from emp table?
select * from emp where MGR IS NULL

--display 20, 30 department MANAGERs from emp table.
select * from emp where job ='manager' and DEPTNO In (20,30)
