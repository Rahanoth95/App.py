Delete From Customer ;
Delete From Movies;
Delete From Rates;
Delete From Rentals  ;
Delete From Inventory ;
DELETE FROM Actors ;

--Populate Customer Table
INSERT INTO Customer (Customer_ID, Customer_NameF, Customer_NameL, Customer_Address, Customer_ZipCode, Customer_Phone, Customer_Email)
VALUES (1, 'John', 'Doe', '123 Main St, Ontario CA', '91764', '909-555-1234', 'john.doe@gmail.com.com');
INSERT INTO Customer (Customer_ID, Customer_NameF, Customer_NameL, Customer_Address, Customer_ZipCode, Customer_Phone, Customer_Email)
VALUES (2, 'Jane', 'Smith', '456 Elm St, Austin TX', '73301', '971-432-4932', 'jane.smith@yahoo.com');
INSERT INTO Customer (Customer_ID, Customer_NameF, Customer_NameL, Customer_Address, Customer_ZipCode, Customer_Phone, Customer_Email)
VALUES (3, 'Bob', 'Johnson', '789 Oak St, Tampa FL', '33602','813-232-9543', 'bob.johnson@aol.com');
INSERT INTO Customer (Customer_ID, Customer_NameF, Customer_NameL, Customer_Address, Customer_ZipCode, Customer_Phone, Customer_Email)
VALUES (4, 'Samantha', 'Lee', '321 Pine St, San Mateo CA', '94401', '650-392-9632', 'samantha.lee@gmail.com');
INSERT INTO Customer (Customer_ID, Customer_NameF, Customer_NameL, Customer_Address, Customer_ZipCode, Customer_Phone, Customer_Email)
VALUES (5, 'Mike', 'Brown', '654 Maple St, Philadelphia PA','19019', '215-555-7890', 'mike.brown@google.com');
INSERT INTO Customer (Customer_ID, Customer_NameF, Customer_NameL, Customer_Address, Customer_ZipCode, Customer_Phone, Customer_Email)
VALUES (7, 'James', 'Bond', '123 Main St, London ENG', '0018', '007-7946-0000', '007@gmail.com.com');


--Populate Movies Table
INSERT INTO Movies (Movie_ID, Movie_Name, Movie_Rating, Director_Name, Movie_Award, Movie_Format_Type)
VALUES (1, 'The Shawshank Redemption', 9.3, 'Frank Darabont', 'Oscar', 'Blu-ray');
INSERT INTO Movies (Movie_ID, Movie_Name, Movie_Rating, Director_Name, Movie_Award, Movie_Format_Type)
VALUES (2, 'The Godfather', 9.2, 'Francis Ford Coppola', 'Golden Globe', 'VHS');
INSERT INTO Movies (Movie_ID, Movie_Name, Movie_Rating, Director_Name, Movie_Award, Movie_Format_Type)
VALUES (3, 'The Dark Knight', 9.0, 'Christopher Nolan', 'Oscar', 'Blu-ray');
INSERT INTO Movies (Movie_ID, Movie_Name, Movie_Rating, Director_Name, Movie_Award, Movie_Format_Type)
VALUES (4, 'The Lord of the Rings', 8.8, 'Peter Jackson', 'Oscar', 'DVD');
INSERT INTO Movies (Movie_ID, Movie_Name, Movie_Rating, Director_Name, Movie_Award, Movie_Format_Type)
VALUES (5, 'Forrest Gump', 8.8, 'Robert Zemeckis', 'Oscar', 'VHS');

--Populate Inventory
INSERT INTO Inventory (Inventory_ID, Price, Format, Serial#, Distributor, Movie_ID)
VALUES (1, 9.99, 'Blu-ray', 12345, 'Columbia Pictures', 1);
INSERT INTO Inventory (Inventory_ID, Price, Format, Serial#, Distributor, Movie_ID)
VALUES (2, 14.99, 'VHS', 67890, '	Paramount Pictures', 2);
INSERT INTO Inventory (Inventory_ID, Price, Format, Serial#, Distributor, Movie_ID)
VALUES (3, 7.99, 'Blu-Ray', 24680, 'Warner Bros. Pictures', 3);
INSERT INTO Inventory (Inventory_ID, Price, Format, Serial#, Distributor, Movie_ID)
VALUES (4, 12.99, 'DVD', 13579, 'New Line Cinema', 4);
INSERT INTO Inventory (Inventory_ID, Price, Format, Serial#, Distributor, Movie_ID)
VALUES (5, 19.99, 'VHS', 86420, '	Paramount Pictures', 5);

--Populate Rates
INSERT INTO Rates(Rate_ID, Rental_Fee, Late_Fee, Damaged_Fee, Lost_Fee, FTR_Fee)
VALUES (301, 10, 2, 2, 20, 15.3);
INSERT INTO Rates(Rate_ID, Rental_Fee, Late_Fee, Damaged_Fee, Lost_Fee, FTR_Fee)
VALUES (302, 15, 1, 1.5, 50, 20.5);
INSERT INTO Rates(Rate_ID, Rental_Fee, Late_Fee, Damaged_Fee, Lost_Fee, FTR_Fee)
VALUES (303, 25, 5, 2, 50, 30.25);
INSERT INTO Rates(Rate_ID, Rental_Fee, Late_Fee, Damaged_Fee, Lost_Fee, FTR_Fee)
VALUES (304, 30, 2, 2, 80, 40.2);
INSERT INTO Rates(Rate_ID, Rental_Fee, Late_Fee, Damaged_Fee, Lost_Fee, FTR_Fee)
VALUES(305, 3, 1, 1, 10, 6.5);

--Populate Rentals
INSERT INTO Rentals(Rental_ID, Inventory_ID, Rate_ID, Rental_Date, Rental_Return, Customer_ID)
VALUES (101, 1, 301, TO_DATE('2023/04/20', 'yyyy/mm/dd'), TO_DATE('2023/04/30', 'yyyy/mm/dd'), 1);
INSERT INTO Rentals(Rental_ID, Inventory_ID, Rate_ID, Rental_Date, Rental_Return, Customer_ID)
VALUES (102, 2, 302, TO_DATE('2023/04/18', 'yyyy/mm/dd'), TO_DATE('2023/04/30', 'yyyy/mm/dd'), 2);
INSERT INTO Rentals(Rental_ID, Inventory_ID, Rate_ID, Rental_Date, Rental_Return, Customer_ID)
VALUES (103, 3, 303, TO_DATE('2023/05/01', 'yyyy/mm/dd'), TO_DATE('2023/05/10', 'yyyy/mm/dd'), 3);
INSERT INTO Rentals(Rental_ID, Inventory_ID, Rate_ID, Rental_Date, Rental_Return, Customer_ID)
VALUES (104, 4, 304, TO_DATE('2023/01/07', 'yyyy/mm/dd'), TO_DATE('2023/01/08', 'yyyy/mm/dd'), 4);
INSERT INTO Rentals(Rental_ID, Inventory_ID, Rate_ID, Rental_Date, Rental_Return, Customer_ID)
VALUES (105, 5, 305, TO_DATE('2022/05/10', 'yyyy/mm/dd'), TO_DATE('2022/05/15', 'yyyy/mm/dd'), 5);

--Populate Actors
INSERT INTO Actors(Actor_ID, Actor_Name, Actor_Gender, Movie_ID)
VALUES (1, 'Tim Robbins', 'Male', 1);
INSERT INTO Actors(Actor_ID, Actor_Name, Actor_Gender, Movie_ID)
VALUES (2, 'Diane Keaton','Female', 2);
INSERT INTO Actors(Actor_ID, Actor_Name, Actor_Gender, Movie_ID)
VALUES (3, 'Christian Bale','Male', 3);
INSERT INTO Actors(Actor_ID, Actor_Name, Actor_Gender, Movie_ID)
VALUES (4, 'Liv Tyler', 'Female',4);
INSERT INTO Actors(Actor_ID, Actor_Name, Actor_Gender, Movie_ID)
VALUES (5, 'Tom Hanks','Male', 5);
