select * from emp;

--Set salary to 3500 for the employee whose employee number is 7934 from emp1 table?

Update emp set SAL = 3500 where EMPNO= 7934;

--Set job to MANAGER & increase 2000 rupees to an employee whose  employee no is 7369 from emp1 table?

update emp set job = 'MANAGER' ,SAL= SAL + 2000 where EMPNO = 7369 

--Increase the salary by 20% whose job title is MANAGER from emp1 table?

update emp set sal = sal + sal * 0.2 where JOB = 'MANAGER';

--Increase the salary by 1000 rupees for all employees in the emp1 table?

update emp set sal = sal + 1000;

--increase 20% on salary, 15% on commission to the employees who are getting commission from emp1 table?

update emp set sal = sal + sal * 0.2 where COMM is not null;

--Set commission to 800 to the employees who are not getting commission from emp1 table?

update emp set comm = 800 where comm is null;

--Set comm has null whose empno are 7521,7698,7900 from emp1 table?
update emp set comm = null where EMPNO = 7521 OR 
EMPNO = 7698 OR
EMPNO = 7900;

--Update the employees salary to 12000 whose current salary is 5000 

Update emp set sal = 12000 where sal = 6000;

--increase 10% on salary who joined in  the year 1982 from emp1 table?
update emp set sal = sal + sal * 0.2 where HIREDATE between '1982-01-01' AND '1982-12-31'

--increase 20% on salary for the employee whose name starts with 'A'and ends with 'S' from emp1 table?
update emp set sal = sal + sal * 0.1 where Ename like '%A%'

-- Delete an employee record whose employee number is 7900 from emp1 table?

delete emp where EMPNO = 7900;

--delete all the managers records from emp1 table?

delete emp where Job = 'Manager';

--delete all 10 , 30 department records from emp1 table?

delete emp where DEPTNO = 10 OR DEPTNO = 30

--delete all records from emp1 table, And get it back the all  the records by using rollback command?
BEGIN TRANSACTION
truncate table emp;
rollback;