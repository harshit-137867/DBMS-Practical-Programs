-- 1. Create table item_master
CREATE TABLE item_master (
  Id              VARCHAR2(5) PRIMARY KEY,
  Name            VARCHAR2(20) NOT NULL,
  Type            VARCHAR2(15) NOT NULL,
  Price           NUMBER(9,2),
  Quality         VARCHAR2(15),
  Item_pack_date  DATE
);

-- 2. Insert data
INSERT INTO item_master VALUES ('I1','Dairymilk','Chocolate',500,'Good',TO_DATE('12-AUG-2000','DD-MON-YYYY'));
INSERT INTO item_master VALUES ('I2','Kajukatri','Mithai',1000,'Verygood',TO_DATE('15-JAN-2016','DD-MON-YYYY'));
INSERT INTO item_master VALUES ('I3','Pizza','Fastfood',350,'Average',TO_DATE('20-FEB-2015','DD-MON-YYYY'));
INSERT INTO item_master VALUES ('I4','Orangejuice','Juice',50,'Best',TO_DATE('05-FEB-2016','DD-MON-YYYY'));
INSERT INTO item_master VALUES ('I5','Vanilla_cack','Bakery',2000,'Good',TO_DATE('01-JAN-2016','DD-MON-YYYY'));

-- 3. Select price, quality, and item_pack_date
SELECT Price, Quality, Item_pack_date FROM item_master;

-- 4. Display all information about items
SELECT * FROM item_master;

-- 5. Sort items by quality
SELECT * FROM item_master ORDER BY Quality;

-- 6. Display distinct quality values
SELECT DISTINCT Quality FROM item_master;

-- 7. Change quality from 'Good' to 'Verygood'
UPDATE item_master SET Quality='Verygood' WHERE Quality='Good';

-- 8. Display items having quality 'Verygood'
SELECT * FROM item_master WHERE Quality='Verygood';

-- 9. Add new column item_pur_date
ALTER TABLE item_master ADD (item_pur_date DATE);

-- 10. Display items with price > 500
SELECT * FROM item_master WHERE Price > 500;

-- 11. Delete item with price = 50
DELETE FROM item_master WHERE Price=50;

-- 12. Rename table from person to Item_detail
-- If you already have a table named 'person':
RENAME person TO Item_detail;

-- If instead you want to rename item_master itself:
-- RENAME item_master TO Item_detail;
