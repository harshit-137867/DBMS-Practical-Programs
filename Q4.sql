-- 1. Create table Person
CREATE TABLE Person (
  Person_Id  NUMBER(5) PRIMARY KEY,
  Fname      VARCHAR2(20) NOT NULL,
  Lname      VARCHAR2(20) NOT NULL,
  City       VARCHAR2(20),
  Salary     NUMBER(9,2)
);

-- 2. Insert data
INSERT INTO Person VALUES (1,'Sneha','Sheth','Rajkot',10000);
INSERT INTO Person VALUES (2,'Puja','Parmar','Ahmedabad',2000);
INSERT INTO Person VALUES (3,'Riya','Gajar','Pune',8000);
INSERT INTO Person VALUES (4,'Sandip','Jadeja','Pune',5000);
INSERT INTO Person VALUES (5,'Alpesh','Prajapati','Mumbai',20000);

-- 3. Select Person_Id and Fname
SELECT Person_Id, Fname FROM Person;

-- 4. Display all persons
SELECT * FROM Person;

-- 5. Sort persons by salary
SELECT * FROM Person ORDER BY Salary;

-- 6. Display distinct city values
SELECT DISTINCT City FROM Person;

-- 7. Change city of Sandip from Pune to Kolkata
UPDATE Person SET City='Kolkata' WHERE Fname='Sandip' AND City='Pune';

-- 8. Display person whose Lname is 'Prajapati'
SELECT * FROM Person WHERE Lname='Prajapati';

-- 9. Add new columns state, Birthdate, and pincode
ALTER TABLE Person ADD (State VARCHAR2(20), Birthdate DATE, Pincode VARCHAR2(10));

-- 10. Display persons with salary > 6000
SELECT * FROM Person WHERE Salary > 6000;

-- 11. Delete persons with salary < 3000
DELETE FROM Person WHERE Salary < 3000;

-- 12. Rename table from Person to Person_master
RENAME Person TO Person_master;
