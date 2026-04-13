-- 1. Customers who are depositors having same branch city as Sunil
SELECT d.cname
FROM deposit d, branch b
WHERE d.bname = b.bname
AND b.city = (
    SELECT b.city
    FROM deposit d, branch b
    WHERE d.bname = b.bname
    AND d.cname = 'SUNIL'
);

-- 2. Deposit and loan details of customers in same city as Pramod
SELECT d., l.
FROM deposit d, borrow l, customers c
WHERE d.cname = l.cname
AND d.cname = c.cname
AND c.city = (
    SELECT city FROM customers WHERE cname = 'PRAMOD'
);

-- 3. Employees earning more than average salary
SELECT emp_no, emp_name
FROM employee
WHERE emp_sal > (SELECT AVG(emp_sal) FROM employee)
ORDER BY emp_sal ASC;

-- 4. Employees who report to Ford
SELECT emp_name, emp_sal
FROM employee
WHERE manager_id = (
    SELECT emp_no FROM employee WHERE emp_name = 'FORD'
);

-- 5. Employees in Accounting department
SELECT dept_no, emp_name, job
FROM employee
WHERE dept_no = (
    SELECT dept_no FROM dept WHERE dept_name = 'ACCOUNTING'
);

-- 6. Customers who are both borrowers and depositors and live in Nagpur
SELECT cname
FROM customers
WHERE city = 'NAGPUR'
AND cname IN (SELECT cname FROM deposit)
AND cname IN (SELECT cname FROM borrow);

-- 7. Customers having same living branch city
SELECT c.cname, b.city
FROM customers c, branch b
WHERE c.city = b.city;

-- 8. Employee details with department name
SELECT e.emp_name, e.dept_no, d.dept_name
FROM employee e, dept d
WHERE e.dept_no = d.dept_no;

-- 9. Unique jobs in department 30 with location
SELECT DISTINCT job, location
FROM employee e, dept d
WHERE e.dept_no = d.dept_no
AND e.dept_no = 30;

-- 10. Employees working in CALCUTTA
SELECT e.emp_name, e.dept_no, d.dept_name
FROM employee e, dept d
WHERE e.dept_no = d.dept_no
AND d.location = 'CALCUTTA';