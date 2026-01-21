SELECT * FROM EMP

                           --FUNCTIONS TASK

-- 1.Write a query to display all employee names from the EMP table in uppercase.

SELECT UPPER(ENAME) AS ENAME_UPPER FROM EMP;


--2.Write a query to display all employee names from the EMP table in lowercase.

SELECT LOWER(ENAME) AS ENAME_LOWER FROM EMP;


--3.Write a query to update all item names in the ITEM table to uppercase.

UPDATE ITEM SET ITEMNAME = UPPER(ITEMNAME);

SELECT * FROM ITEM;


--4.Write an SQL query to display the employee name and the length of each name from the EMP table using an appropriate character function.

SELECT ENAME, LEN(ENAME) AS NAME_LENGTH FROM EMP;


-- 5.Write a query to display all employee records from the EMP table whose names having exactly 4 characters (using the LEN function).

SELECT *FROM EMP WHERE LEN(ENAME) = 4;


-- 6.Write a query to display all employee records from the EMP table where the length of the employee name is greater than 5 characters by using len function
SELECT * FROM EMP WHERE LEN(ENAME) > 5;


--7.Check the left and right function queries

--LEFT():-used to extract the characters from left side
--Left(string,length)

--Query 1:
SELECT LEFT('GOWTHAM RAJ',7);
--Output: GOWTHAM

--Query 2:
SELECT LEFT('hello',4);
--Output: hell


--RIGHT():-used to extract the characters from right side

--Query 1:
SELECT RIGHT('GOWTHAM RAJ',3);
--Output: RAJ

--Query 2:
SELECT RIGHT('hello',3);
--Output: llo


--8.Write a query to display the first 3 characters of each employee name from the EMP table using the LEFT function or substring function.
SELECT ENAME, LEFT(ENAME,3) AS FIRST FROM EMP;

SELECT ENAME, SUBSTRING(ENAME,1,3) AS FIRST3 FROM EMP;


--9.Write a query to display employee records whose name start with 'M' by using LEFT() or substring()
SELECT *FROM EMP WHERE LEFT(ENAME,1) = 'M';

SELECT * FROM EMP WHERE SUBSTRING(ENAME,1,1) = 'M';


--10.Write a query to display employee records whose name end with 'S' by using right()

SELECT * FROM EMP WHERE RIGHT(ENAME,1) = 'S';


--11.Write a query to display employee records whose name started and end with same letter by using left() & right()
SELECT *FROM EMP WHERE LEFT(ENAME,1) = RIGHT(ENAME,1);


-- 11.Write a query to display empno,ename along with mailid as employee name first 3 characters and empno last 3 digits and concatenate @tcs.com at end from emp table

SELECT EMPNO, ENAME,
  LOWER(LEFT(ENAME,3)) + RIGHT(CAST(EMPNO AS VARCHAR(10)),3) + '@tcs.com' AS MAILID FROM EMP;


--12.Check the following substring() queries outputs


SELECT SUBSTRING('ABCDEFGH',2,3);
--Output: BCD


SELECT SUBSTRING('GOWTHAM RAJ',1,7);
--Output: GOWTHAM

SELECT SUBSTRING('GOWTHAM RAJ',9,3);
--Output: RAJ

SELECT SUBSTRING('GOWTHAM RAJ',4,4);
--Output: THAM

SELECT SUBSTRING('GOWTHAM RAJ',4,1);
--Output: T


--13.Write a query to display the employees whose ename second letter would be LA from emp table using substring function?

SELECT *FROM EMP WHERE SUBSTRING(ENAME,2,2) = 'LA';


--14.Write a query to display employee records whose names are started with vowel by using substr() function from emp table?

SELECT * FROM EMP WHERE SUBSTRING(ENAME,1,1) IN ('A','E','I','O','U');


--15.Check the following queries outputs

SELECT CHARINDEX('T','GOWTHAM RAJ');
--Output: 5

SELECT CHARINDEX('A','GOWTHAM RAJ',7);
--Output: 9

SELECT CHARINDEX('k','GOWTHAM RAJ');
--Output: 0

--16.Check the following queries outputs

select translate('india','in','xy'),replace('india','in','xy');

--xydxa,	xydia

select replace('JOHN','H','N') ;
--JONN

select translate('JOHN','H','AMMERPET') ;
--error bcoz translate - character to character 

select replace('JOHN','H','AMMERPET') ;
--JOAMMERPETN

select translate('ABCDEF','FEDCBA','123456') ;
--654321

select replace('A B C',' ','india');
--AindiaBindiaC








