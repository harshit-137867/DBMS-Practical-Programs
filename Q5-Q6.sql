-- 1. Create table Bank_Branch
CREATE TABLE Bank_Branch (
  Branch_id        VARCHAR2(5) PRIMARY KEY,
  Branch_name      VARCHAR2(20) NOT NULL,
  Branch_address   VARCHAR2(30),
  Branch_city      VARCHAR2(20),
  Branch_state     VARCHAR2(20),
  Branch_open_date DATE
);

-- 2. Insert data
INSERT INTO Bank_Branch VALUES ('B001','BOI','JagnathRoad','Rajkot','Gujarat',TO_DATE('22-MAR-2015','DD-MON-YYYY'));
INSERT INTO Bank_Branch VALUES ('B002','SBI','Boriwali Road','Mumbai','Maharashtra',TO_DATE('12-JAN-2000','DD-MON-YYYY'));
INSERT INTO Bank_Branch VALUES ('B003','HDFC','AgraRoad','Agra','U.P',TO_DATE('04-FEB-1998','DD-MON-YYYY'));
INSERT INTO Bank_Branch VALUES ('B004','DenaBank','CGRoad','Ahmedabad','Gujarat',TO_DATE('20-SEP-2012','DD-MON-YYYY'));
INSERT INTO Bank_Branch VALUES ('B005','ICICI','MajavdiRoad','Junagadh','Gujarat',TO_DATE('07-MAY-2011','DD-MON-YYYY'));

-- 3. Display all information of Bank_Branch
SELECT * FROM Bank_Branch;

-- 4. Display Branch_id of branch
SELECT Branch_id FROM Bank_Branch;

-- 5. Display Branch_id and Branch_address
SELECT Branch_id, Branch_address FROM Bank_Branch;

-- 6. Display Branch_name, Branch_address, Branch_city
SELECT Branch_name, Branch_address, Branch_city FROM Bank_Branch;

-- 7. Display Branch_city, Branch_state, Branch_open_date
SELECT Branch_city, Branch_state, Branch_open_date FROM Bank_Branch;

-- 8. Sort table by Branch_id
SELECT * FROM Bank_Branch ORDER BY Branch_id;

-- 9. Sort table by Branch_name
SELECT * FROM Bank_Branch ORDER BY Branch_name;

-- 10. Sort table by Branch_city
SELECT * FROM Bank_Branch ORDER BY Branch_city;

-- 11. Sort table by Branch_state
SELECT * FROM Bank_Branch ORDER BY Branch_state;
-- 12. Change the size of Branch_state column
ALTER TABLE Bank_Branch MODIFY (Branch_state VARCHAR2(30));

-- 13. Change branch_name = 'Union' where Branch_id = 'B003'
UPDATE Bank_Branch SET Branch_name='Union' WHERE Branch_id='B003';

-- 14. Change state = 'Delhi' of BOI branch
UPDATE Bank_Branch SET Branch_state='Delhi' WHERE Branch_name='BOI';

-- 15. Change branch_open_date = 04-NOV-2015 of Union branch
UPDATE Bank_Branch SET Branch_open_date=TO_DATE('04-NOV-2015','DD-MON-YYYY')
WHERE Branch_name='Union';

-- 16. Add column Pincode in branch
ALTER TABLE Bank_Branch ADD (Pincode VARCHAR2(10));

-- 17. Insert pincode = 360006 of Dena Bank
UPDATE Bank_Branch SET Pincode='360006' WHERE Branch_name='DenaBank';

-- 18. Delete branch having branch_open_date = 07-MAY-2011
DELETE FROM Bank_Branch WHERE Branch_open_date=TO_DATE('07-MAY-2011','DD-MON-YYYY');

-- 19. Rename table Bank_Branch to Branch_master
RENAME Bank_Branch TO Branch_master;

-- 20. Display structure of Branch_master
DESC Branch_master;

-- 21. Create Branch_info from Branch_master
CREATE TABLE Branch_info AS SELECT * FROM Branch_master;
