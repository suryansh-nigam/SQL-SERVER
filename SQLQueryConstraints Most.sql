/*
   SQL CONSTRAINTS
   ---------------

1. What is Constraint? What are different types of Constraints?

What is a Constraint? A constraint is a rule applied on a table column
to enforce data integrity. It ensures that the data entered into the
database is accurate and valid.

Types of Constraints in SQL:

1.  NOT NULL
    -   Prevents NULL values in a column.

2.  UNIQUE
    -   Prevents duplicate values in a column.

3.  PRIMARY KEY
    -   Uniquely identifies each record in a table.
    -   Cannot contain NULL or duplicate values.

4.  FOREIGN KEY
    -   Establishes a relationship between two tables.
    -   Maintains referential integrity.

5.  CHECK
    -   Ensures that values meet a specific condition.

6.  DEFAULT
    -   Assigns a default value if no value is provided.

------------------------------------------------------------------------

2. What is Primary Key? How many Primary Keys can a table have?

A Primary Key is a column (or combination of columns) that uniquely
identifies each row in a table.

Properties: - Does not allow NULL values - Does not allow duplicate
values - Only ONE primary key per table

However, that one primary key can consist of multiple columns (Composite
Primary Key).

Example:

CREATE TABLE Student ( student_id INT PRIMARY KEY, name VARCHAR(50) );

------------------------------------------------------------------------

3. What is Foreign Key?

A Foreign Key is a column that references the Primary Key of another
table.

Purpose: - Establish relationship between tables - Maintain referential
integrity

Example:

CREATE TABLE Orders ( 
order_id INT PRIMARY KEY, 
student_id INT,
FOREIGN KEY (student_id) REFERENCES Student(student_id) );

------------------------------------------------------------------------

4. Differences between Primary Key and Foreign Key

Primary Key: - Uniquely identifies each record - No duplicates allowed -
NULL not allowed - Only one per table

Foreign Key: - Connects two tables - Duplicates allowed - NULL allowed
(unless specified) - Multiple foreign keys allowed in one table

------------------------------------------------------------------------

5. What is CHECK Constraint?

CHECK constraint ensures that column values satisfy a specific
condition.

Example:

CREATE TABLE Employee (
emp_id INT PRIMARY KEY,
age INT CHECK (age >=18) );

In this case, age must be 18 or greater.

------------------------------------------------------------------------

6. Differences between Primary Key and Unique Key

Primary Key: - No duplicates - No NULL allowed - Only one per table -
Main identifier of table

Unique Key: - No duplicates - One NULL allowed (in most databases) -
Multiple unique keys allowed per table - Used as alternate unique column

------------------------------------------------------------------------

7. Establish Relationship between Authors and Books

Relationship: One Author can write many Books (One-to-Many)

Authors Table: - author_id (Primary Key) - author_name

Books Table: - book_id (Primary Key) - book_name - author_id (Foreign
Key)

*/

CREATE TABLE Authors ( author_id INT PRIMARY KEY, author_name
VARCHAR(100) );

CREATE TABLE Books ( book_id INT PRIMARY KEY, book_name VARCHAR(100),
author_id INT, FOREIGN KEY (author_id) REFERENCES Authors(author_id) );

------------------------------------------------------------------------
/*
8. Establish Relationship between Accept and Data

Relationship: One Accept record can have many Data records.

Accept Table: - accept_id (Primary Key) - accept_name

Data Table: - data_id (Primary Key) - accept_id (Foreign Key)

*/

CREATE TABLE Accept ( accept_id INT PRIMARY KEY, accept_name
VARCHAR(100) );

CREATE TABLE Data ( data_id INT PRIMARY KEY, accept_id INT, FOREIGN KEY
(accept_id) REFERENCES Accept(accept_id) );

------------------------------------------------------------------------
/*
9. Create PROJECT Table with Primary Key and Foreign Key referencing Department
 */

--Department Table:

CREATE TABLE Department ( department_id INT PRIMARY KEY, department_name
VARCHAR(100) );

--Project Table:

CREATE TABLE Project ( projectid INT PRIMARY KEY, project_name
VARCHAR(100), department_id INT, FOREIGN KEY (department_id) REFERENCES
Department(department_id) );


