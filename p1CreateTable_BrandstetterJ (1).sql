DROP TABLE Customer CASCADE CONSTRAINTS ;
DROP TABLE Movies CASCADE CONSTRAINTS ;
DROP TABLE Rates CASCADE CONSTRAINTS ;
DROP TABLE Rentals CASCADE CONSTRAINTS ;
DROP TABLE Inventory CASCADE CONSTRAINTS ;
DROP TABLE Actors CASCADE CONSTRAINTS ;

CREATE TABLE Customer(
    Customer_ID      NUMBER(11)  PRIMARY KEY,
    Customer_NameF  VARCHAR2(30) NOT NULL,
    Customer_NameL  VARCHAR2(30) NOT NULL,
    Customer_Address VARCHAR2(100),
    Customer_ZipCode NUMBER(11),
    Customer_Phone   VARCHAR2(25),
    Customer_Email   VARCHAR2(25)
);

CREATE TABLE Movies(
    Movie_ID            NUMBER(11) PRIMARY KEY,
    Movie_Name          VARCHAR2(30),
    Movie_Rating        NUMBER(10, 2),
    Director_Name       VARCHAR2(30),
    Movie_Award         VARCHAR2(25),
    Movie_Format_Type   VARCHAR2(25)
);

CREATE TABLE Inventory(
    Inventory_ID NUMBER(11) PRIMARY KEY,
    Price       NUMBER(10, 2),
    Format      VARCHAR(20),
    Serial#     NUMBER(11),
    Distributor VARCHAR(30),
    Movie_ID    Number(11),
    CONSTRAINT MovieID_FK FOREIGN KEY (Movie_ID) REFERENCES Movies (Movie_ID)
);

CREATE TABLE Rates(
    Rate_ID     NUMBER(11) PRIMARY KEY,
    Rental_Fee  NUMBER(10, 2),
    Late_Fee    NUMBER(10, 2),
    Damaged_Fee NUMBER(10, 2),
    Lost_Fee    NUMBER(10, 2),
    FTR_Fee     NUMBER(10, 2)
);

CREATE TABLE Rentals(
    Rental_ID     NUMBER(11) PRIMARY KEY,
    Customer_ID   NUMBER(11),
    Rental_Date   DATE DEFAULT SYSDATE,
    Rental_Return DATE,
    Inventory_ID  NUMBER(11),
    Rate_ID NUMBER(11),
    CONSTRAINT RateID_FK FOREIGN KEY (Rate_ID) REFERENCES Rates (Rate_ID),
    CONSTRAINT Customer_FK FOREIGN KEY (Customer_ID) REFERENCES Customer (Customer_ID),
    CONSTRAINT InventoryID_FK FOREIGN KEY (Inventory_ID) REFERENCES Inventory (Inventory_ID)
);


CREATE TABLE Actors(
    Actor_ID     NUMBER(11)PRIMARY KEY,
    Actor_Name   VARCHAR2(30),
    Actor_Gender VARCHAR2(25),
    Movie_ID     NUMBER(11),
    CONSTRAINT MovieID2_FK FOREIGN KEY (Movie_ID) REFERENCES Movies (Movie_ID)
);

