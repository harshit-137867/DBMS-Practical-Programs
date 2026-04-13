-- 1. Create table Cust_master
CREATE TABLE Cust_master (
  Cust_no    VARCHAR2(5) PRIMARY KEY,
  Cust_name  VARCHAR2(20) NOT NULL,
  Address1   VARCHAR2(30),
  Address2   VARCHAR2(30),
  City       VARCHAR2(20),
  State      VARCHAR2(20),
  Ph_no      VARCHAR2(15)
);

-- 2. Insert data
INSERT INTO Cust_master VALUES ('C1','Priya','RingRoad','Puja Park','Ahmedabad','Gujarat','8989878548');
INSERT INTO Cust_master VALUES ('C2','Puja','Lajpat Nager','Shyamal colony','Banaras','UP','7898456213');
INSERT INTO Cust_master VALUES ('C3','Ankit','Borivali','Panchayat nager','Mumbai','Maharashtra','7885984251');
INSERT INTO Cust_master VALUES ('C4','Ravi','VajdiRoad','Nandbhoomi colony','Delhi','Delhi','7898452034');
INSERT INTO Cust_master VALUES ('C5','Alpa','Jamanager Road','Railway colony','Ahmedabad','Gujarat','7465241589');

-- 3. Select information about all customers
SELECT * FROM Cust_master;

-- 4. Display customers belonging to Gujarat state
SELECT * FROM Cust_master WHERE State='Gujarat';

-- 5. Sort customers by their name
SELECT * FROM Cust_master ORDER BY Cust_name;

-- 6. Display distinct city values
SELECT DISTINCT City FROM Cust_master;

-- 7. Change address1 of Priya from 'RingRoad' to 'CG Road'
UPDATE Cust_master SET Address1='CG Road' WHERE Cust_name='Priya' AND Address1='RingRoad';

-- 8. Display city of customers whose state is Gujarat
SELECT City FROM Cust_master WHERE State='Gujarat';

-- 9. Add new column pin_code
ALTER TABLE Cust_master ADD (pin_code VARCHAR2(10));

-- 10. Drop column pin_code
ALTER TABLE Cust_master DROP COLUMN pin_code;

-- 11. Delete customer with ph_no '7898452034'
DELETE FROM Cust_master WHERE Ph_no='7898452034';

-- 12. Rename table from Cust_master to Customer_detail
RENAME Cust_master TO Customer_detail;
