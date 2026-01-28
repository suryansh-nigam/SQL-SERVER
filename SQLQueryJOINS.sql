--INNER JOIN example

SELECT  ename,sal,dname,loc
    FROM emp as e INNER JOIN dept as d
    ON  e.deptno = d.deptno 
    where d.LOC = 'chicago'

    
--------------------------------------------------------------
SELECT  e.first_name + '  ' + e.last_name as name,
                   d.dname,
                   l.city,l.state,
                   c.country_name
   FROM employees as e 
   INNER JOIN departments as d 
   ON  e.deptid = d.deptid
   INNER JOIN locations as l
   ON d.locid = l.locid
   INNER JOIN countries as c
   ON l.country_id = c.country_id 


   --OUTER JOIN
   ------------

   SELECT * FROM EMP
   SELECT * FROM DEPT

   --LEFT JOIN
   SELECT e.ename,d.dname
  FROM emp as e 
  LEFT JOIN dept as d
  ON e.deptno = d.deptno

  --RIGHT JOIN 

  SELECT e.ename,d.dname
  FROM emp as e 
right JOIN dept as d
  ON e.deptno = d.deptno

--FULL JOIN
  SELECT e.ename,d.dname
  FROM emp as e 
full JOIN dept as d
  ON e.deptno = d.deptno


 SELECT    D.DNAME,SUM(E.SAL) AS TOTSAL
 FROM EMP AS E INNER JOIN DEPT AS D
 ON E.DEPTNO = D.DEPTNO
 GROUP BY D.DNAME

 SELECT job FROM emp WHERE deptno = 20 
 INTERSECT
 SELECT job FROM emp WHERE deptno = 30