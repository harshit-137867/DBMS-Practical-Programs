-- Create JOB table
CREATE TABLE JOB (
    job_id VARCHAR2(20) PRIMARY KEY,
    job_name VARCHAR2(50),
    min_sal NUMBER,
    max_sal NUMBER
);

-- Insert values into JOB table
INSERT INTO JOB VALUES ('IT_PROG', 'Programmer', 4000, 10000);
INSERT INTO JOB VALUES ('MK_MGR', 'Marketing manager', 9000, 15000);
INSERT INTO JOB VALUES ('FI_MGR', 'Finance manager', 8200, 12000);
INSERT INTO JOB VALUES ('FI_ACC', 'Account', 4200, 9000);
INSERT INTO JOB VALUES ('LEC', 'Lecturer', 6000, 17000);
INSERT INTO JOB VALUES ('COMP_OP', 'Computer Operator', 1500, 3000);

-- Create EMPLOYEE table
CREATE TABLE EMPLOYEE (
    emp_no NUMBER PRIMARY KEY,
    emp_name VARCHAR2(50),
    emp_sal NUMBER,
    emp_comm NUMBER,
    dept_no NUMBER
);

-- Insert values into EMPLOYEE table
INSERT INTO EMPLOYEE VALUES (101, 'Smith', 800, 20, NULL);
INSERT INTO EMPLOYEE VALUES (102, 'Snehal', 1600, 300, 25);
INSERT INTO EMPLOYEE VALUES (103, 'Adama', 1100, 0, 20);
INSERT INTO EMPLOYEE VALUES (104, 'Aman', 3000, 15, NULL);
INSERT INTO EMPLOYEE VALUES (105, 'Anita', 5000, 5000, 10);
INSERT INTO EMPLOYEE VALUES (106, 'Sneha', 2450, 2450, 10);
INSERT INTO EMPLOYEE VALUES (107, 'Anamika', 2975, 30, NULL);

-- Create DEPOSIT table
CREATE TABLE DEPOSIT (
    A_no NUMBER PRIMARY KEY,
    cname VARCHAR2(50),
    Bname VARCHAR2(50),
    Amount NUMBER,
    deposit_date DATE
);

-- Insert values into DEPOSIT table
INSERT INTO DEPOSIT VALUES (101, 'Anil', 'andheri', 7000, TO_DATE('01-jan-2006','DD-MON-YYYY'));
INSERT INTO DEPOSIT VALUES (102, 'sunil', 'virar', 5000, TO_DATE('15-jul-2006','DD-MON-YYYY'));
INSERT INTO DEPOSIT VALUES (103, 'jay', 'villeparle', 6500, TO_DATE('12-mar-2006','DD-MON-YYYY'));
INSERT INTO DEPOSIT VALUES (104, 'vijay', 'andheri', 8000, TO_DATE('17-sep-2006','DD-MON-YYYY'));
INSERT INTO DEPOSIT VALUES (105, 'keyur', 'dadar', 7500, TO_DATE('19-nov-2006','DD-MON-YYYY'));
INSERT INTO DEPOSIT VALUES (106, 'mayur', 'borivali', 5500, TO_DATE('21-dec-2006','DD-MON-YYYY'));

-- 2. Query to display account number and deposited rupees of customers whose accounts were opened between 01-Jan-2006 and 25-Jul-2006
SELECT A_no, Amount
FROM DEPOSIT
WHERE deposit_date BETWEEN TO_DATE('01-jan-2006','DD-MON-YYYY') 
                       AND TO_DATE('25-jul-2006','DD-MON-YYYY');

-- 3. Query to display all jobs where the minimum salary is greater than 4000
SELECT job_id, job_name, min_sal, max_sal
FROM JOB
WHERE min_sal > 4000;

-- 4. Query to display employee name (with alias) and salary for employees whose department number is 20
SELECT emp_name AS Employee_Name, emp_sal
FROM EMPLOYEE
WHERE dept_no = 20;

-- 5. Query to display employee number, name, and department details of employees whose department number is either 10 or 20
SELECT emp_no, emp_name, dept_no
FROM EMPLOYEE
WHERE dept_no IN (10, 20);

-- 6. Query to display all employees whose names start with 'A'
SELECT emp_no, emp_name, emp_sal, dept_no
FROM EMPLOYEE
WHERE emp_name LIKE 'A%';

-- 7. Query to display all employees whose third character in their name is 'a'
SELECT emp_no, emp_name, emp_sal, dept_no
FROM EMPLOYEE
WHERE emp_name LIKE '__a%';

-- 8. Query to display all employees whose names start with 'A' and have 'a' as the third character
SELECT emp_no, emp_name, emp_sal, dept_no
FROM EMPLOYEE
WHERE emp_name LIKE 'A_a%';

-- 9. Query to display employee number, name, and salary of employees whose names are exactly 5 characters long
SELECT emp_no, emp_name, emp_sal
FROM EMPLOYEE
WHERE LENGTH(emp_name) = 5;

-- 9 (extended). Query to display employee number, name, and salary of employees whose names are 5 characters long and start with 'Ani'
SELECT emp_no, emp_name, emp_sal
FROM EMPLOYEE
WHERE LENGTH(emp_name) = 5
  AND emp_name LIKE 'Ani%';

-- 10. Query to sort and display the names of customers from the DEPOSIT table
SELECT cname
FROM DEPOSIT
ORDER BY cname;
