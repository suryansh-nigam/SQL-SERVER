Create database Students

Create table Student(
SID int,
SNAME varchar(30),
Gender varchar(10),
Fee money,
DOB date)

-- Fetch Data
Select * from Student

Select * from STUDENT_DETAILS



--display all the records from the STUDENT table.

Insert Into Student values(1,'Surya', 'Male', 4000, '2003-10-23')
Insert Into Student values(2,'Suryansh', 'Male', 3000, '2005-10-23',Null);

UPDATE STUDENT_DETAILS SET Email= 'nigamsurya@gmail.com' where sid=1 ;
UPDATE STUDENT_DETAILS SET Email= 'nigamsurya@gmail.com' where sid=2 ;

-- set the Eno column as primary key in the EMPLOYEE table.
ALTER TABLE EMPLOYEE ALTER COLUMN Eno INT NOT NULL
 -- Add Primary Key Constraint
ALTER TABLE Employee
ADD CONSTRAINT PK_Employee_Eno PRIMARY KEY (Eno);


-- add a new column email into STUDENT table.
Alter table Student Add Email varchar(50);

-- drop the gender column.
Alter  table Student
Drop column Gender

--increase the size of the SNAME column to 20 in the student table

Alter table Student Alter Column SNAME Varchar(20);

-- rename the column SNAME to NAME in the STUDENT table.
EXEC sp_rename 'STUDENT.SNAME', 'NAME', 'COLUMN';

-- rename tje table student to student_details.
EXEC sp_rename 'Student', 'STUDENT_DETAILS'

-- Write a query to completely delete the A1 table along with its structure.

create table a1
(
sid int,
sname varchar(10)
);

insert into a1 values(1,'surya');
insert into a1 values(2,'anushka');

select * from a1

-- drop a1 table
DROP table a1

-- a query to remove all rows from the A2 table but keep it structure for future use.
create table a2
    (
    sid int,
    sname varchar(10)
    );
 
insert into a2 values(1,'surya');
insert into a2 values(2,'anushka');

select * from a2;

truncate table a2

-- Create the student1 table and insert the records 

   create table student1
    (
    SNO int,
    SNAME varchar(20),
    SUB1 INT,
    SUB2 INT,
    SUB3 INT
    )
 
insert into STUDENT1 values
(1,'GOWTHAM', 72,18,24),
(2,'KAVYA', 60,50,45),
(3,'PREETHI', 12,30,25),
(4,'KIRAN', 80,88,74);

SELECT * FROM student1
















