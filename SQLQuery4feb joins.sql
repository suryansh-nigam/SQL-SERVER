-----JOIN TASK-----

select * from students111;
SELECT * FROM COURSES111;

--------------------------------
--Find the courses that currently have no students enrolled?
--------------------------------
SELECT C.COURSE_NAME
FROM COURSES111 C
LEFT JOIN STUDENTS111 S ON C.COURSE_ID = S.COURSE_ID
WHERE S.COURSE_ID IS NULL;

--Find courses that have more than one student scoring above 80 marks?
SELECT C.COURSE_NAME
FROM COURSES111 C
JOIN STUDENTS111 S ON C.COURSE_ID = S.COURSE_ID
WHERE S.MARKS > 80
GROUP BY C.COURSE_NAME
HAVING COUNT(S.STUDENT_ID) > 1;


/*
Table A contains student data.Table B contains Recruiting companies.Which type of join needs to fetch list of students who are selected by companies[Innominds Software Pvt.Ltd]

a) Ineer Join

b) Right Join

c) Left Join

d) Full Outer Join

Answer: a) Inner Join

*/

---------------------------
SELECT * FROM MASTER_USERS;
SELECT * FROM HELP_REQUESTS;

--Write an SQL query to find all users from Master_Users who never raised a help request-i.e their ID does not appear in the Help_Requests table
SELECT M.*
FROM MASTER_USERS M
LEFT JOIN HELP_REQUESTS H 
ON M.ID = H.USER_ID
WHERE H.USER_ID IS NULL;


/*
Write a query to display Order id.delivery time for the order which was delivered on 'Pine Street'.

Your output should have 2 columns as given below.

ORDER_ID      DELIVERY_TIME

*/

SELECT ORDER_ID, DELIVERY_TIME
FROM ORDERS
WHERE DELIVERY_ADDRESS = 'Pine Street';


/*
Write a query to display the animal's name(use alias animal_name),species,gender,and caretaker's full name(use alias caretaker_name) for all male animals.The full name should be create by combining the first name and last name with a space betwen them.
*/

SELECT A.ANIMAL_NAME AS animal_name,A.SPECIES
,A.GENDER,A.CARETAKER_FIRST_NAME || ' ' ||
A.CARETAKER_LAST_NAME AS caretaker_name
FROM ANIMALS A
WHERE A.GENDER = 'Male';


--The department name(use alias 'DeptNAME'),the count of doctors(use alias 'TotalDoctors'),and the total salary (use alias 'TotalSalary') for each department.Sort the results by the total salary in descending order 

SELECT D.DEPARTMENT_NAME AS DeptNAME,
COUNT(DO.DOCTOR_ID) AS TotalDoctors,
SUM(DO.SALARY) AS TotalSalary
FROM DEPARTMENTS D
JOIN DOCTORS DO ON D.DEPARTMENT_ID = DO.DEPARTMENT_ID
GROUP BY D.DEPARTMENT_NAME
ORDER BY TotalSalary DESC;






