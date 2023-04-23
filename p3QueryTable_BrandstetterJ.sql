SELECT Customer_NameF, Customer_NameL, Customer_ID, Customer_Address, Customer_ZipCode
FROM Customer
ORDER BY Customer_ID;

SELECT * 
FROM Rentals
WHERE Rental_Date >SYSDATE - 30
ORDER BY Rental_Date;

SELECT Distributor, Inventory_ID
FROM Inventory
ORDER BY Distributor;


UPDATE Customer
SET Customer_NameL = 'Bond'
WHERE Customer_ID = 2;

SELECT * FROM Customer Where Customer_ID = 2;
--If undo is required, Use Rollback
ROLLBACK;

DELETE FROM Customer
WHERE Customer_ID = 6;
--If undo is required, Use Rollback
ROLLBACK;

ALTER TABLE Rentals
DROP CONSTRAINT Customer_FK;
ROLLBACK;