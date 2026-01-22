--DATE FUNCTIONS (SQL Server)

SELECT * FROM EMP

--1) Display employees who joined in year 1981 (using DATEPART):
----------------------------------------------------------------
SELECT * FROM EMP WHERE DATEPART(YEAR, HIREDATE) = 1981;


--2) Display employees who joined in month DECEMBER (using DATEPART):
-------------------------------------------------------------------
SELECT * FROM EMP WHERE DATEPART(MONTH, HIREDATE) = 12;


--3) Display employees who joined in 1980, 1982, 1984 (using DATEPART):
----------------------------------------------------------------------
SELECT * FROM EMP WHERE DATEPART(YEAR, HIREDATE) IN (1980, 1982, 1984);


--4) Display employees who joined in JAN, MAR, DEC months (using DATEPART):
--------------------------------------------------------------------------
SELECT * FROM EMP WHERE DATEPART(MONTH, HIREDATE) IN (1, 3, 12);


--5) Display employees who joined in 1981 DECEMBER (using DATEPART):
-------------------------------------------------------------------
SELECT * FROM EMP WHERE DATEPART(YEAR, HIREDATE) = 1981
  AND DATEPART(MONTH, HIREDATE) = 12;


--6) Display employees who joined in 1st and 4th quarter (using DATEPART):
-------------------------------------------------------------------------
SELECT * FROM EMP WHERE DATEPART(QUARTER, HIREDATE) IN (1, 4);


--7) Display employees who joined in 1st quarter of 1981 (using DATEPART):
-------------------------------------------------------------------------
SELECT * FROM EMP WHERE DATEPART(YEAR, HIREDATE) = 1981
  AND DATEPART(QUARTER, HIREDATE) = 1;


-- 8) Display employees who joined on SUNDAY:
------------------------------------------

-- Day name depends on language settings, but Sunday works in default English.
SELECT * FROM EMP WHERE DATENAME(WEEKDAY, HIREDATE) = 'Sunday';

-- Alternative (weekday number) - depends on @@DATEFIRST setting:
-- SELECT * FROM EMP WHERE DATEPART(WEEKDAY, HIREDATE) = 1;


--9) Display employees who joined in a leap year:
------------------------------------------------
SELECT * FROM EMP WHERE (DATEPART(YEAR, HIREDATE) % 400 = 0)
   OR (DATEPART(YEAR, HIREDATE) % 4 = 0
   AND DATEPART(YEAR, HIREDATE) % 100 <> 0);


--10) Display employee name, hiredate and day of joining (using DATENAME):
-------------------------------------------------------------------------
SELECT ENAME,HIREDATE,DATENAME(WEEKDAY, HIREDATE) AS JOIN_DAY FROM EMP;


--11) Find which day India got independence (using DATENAME):
-----------------------------------------------------------
-- India Independence Date: 15-Aug-1947
SELECT DATENAME(WEEKDAY, '1947-08-15') AS INDEPENDENCE_DAY;


--12) Display current system date and time:
------------------------------------------
SELECT GETDATE() AS CURRENT_SYSTEM_DATE_TIME;

-- (Optional) current date only:
-- SELECT CAST(GETDATE() AS DATE) AS CURRENT_DATE;


--13) Display employee names and number of years working up to today (DATEDIFF):
------------------------------------------------------------------------------
SELECT ENAME, DATEDIFF(YEAR, HIREDATE, GETDATE()) AS YEARS_WORKED FROM EMP;


------------------------------------------------------------------------------------------------------
