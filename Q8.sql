-- 1. List total deposit from deposit
SELECT SUM(Amount) AS Total_Deposit FROM Deposit;

-- 2. List total loan from Karolbagh branch
SELECT SUM(Amount) AS Total_Loan 
FROM Borrow 
WHERE Bname='KAROLBAGH';

-- 3. Give maximum loan from branch VRCE
SELECT MAX(Amount) AS Max_Loan 
FROM Borrow 
WHERE Bname='VRCE';

-- 4. Count total number of customers
SELECT COUNT(*) AS Total_Customers FROM Customers;

-- 5. Count total number of customer’s cities
SELECT COUNT(DISTINCT City) AS Total_Customer_Cities FROM Customers;

-- 6. Create table supplier from employee with all the columns
CREATE TABLE Supplier AS SELECT * FROM Employee;

-- 7. Create table sup1 from employee with first two columns
CREATE TABLE Sup1 AS SELECT Emp_no, Emp_name FROM Employee;

-- 8. Create table sup2 from employee with no data
CREATE TABLE Sup2 AS SELECT * FROM Employee WHERE 1=0;

-- 9. Insert data into sup2 from employee 
-- whose second character is 'n' and name length is 5
INSERT INTO Sup2 
SELECT * FROM Employee 
WHERE SUBSTR(Emp_name,2,1)='n' AND LENGTH(Emp_name)=5;

-- 10. Delete all rows from sup1
DELETE FROM Sup1;

-- 11. Delete supplier whose sup_no is 103
DELETE FROM Supplier WHERE Sup_no=103;

-- 12. Rename table sup2 to suplier_two
RENAME Sup2 TO Suplier_two;

-- 13. Destroy table sup1 with all the data
DROP TABLE Sup1;

-- 14. Update dept_no to 10 where second character of emp_name is 'm'
UPDATE Employee SET Dept_no=10 
WHERE SUBSTR(Emp_name,2,1)='m';

-- 15. Update employee name where employee number is 103
UPDATE Employee SET Emp_name='NewName' WHERE Emp_no=103;
