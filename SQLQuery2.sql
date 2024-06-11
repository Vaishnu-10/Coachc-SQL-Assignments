Create database Order_Stores_Data

Use Order_Stores_Data

CREATE TABLE Orders_Table (
    Order_Id INT PRIMARY KEY,
    OrderDate DATE,
    Region VARCHAR(255),
    Rep VARCHAR(255),
    Order_Item VARCHAR(255),
    Units INT,
    Unit_Cost DECIMAL(10, 2),
    Total_Price DECIMAL(10, 2)
);


CREATE TABLE Stores_Table (
    Store_Id INT PRIMARY KEY,
    StoreType VARCHAR(255),
    Assortment INT,
    CompetitionDistance INT,
    Month INT,
    Year INT,
    PromoInterval VARCHAR(255)
);

INSERT INTO Orders_Table (Order_Id, OrderDate, Region, Rep, Order_Item, Units, Unit_Cost, Total_Price) VALUES
(1, '2021-06-01', 'East', 'Aruna', 'Pencil', 95, 1.99, 189.05),
(2, '2021-01-23', 'Central', 'Kivell', 'Eraser', 50, 19.99, 999.50),
(3, '2021-02-09', 'Central', 'Ganesh', 'Unknown', 36, 4.99, 179.64),
(4, '2021-02-26', 'Central', 'Payal', 'Unknown', 27, 19.99, 539.73),
(5, '2021-03-15', 'West', 'Sorvino', 'Unknown', 56, 2.99, 167.44),
(6, '2021-04-01', 'East', 'Hitesh', 'Pencil', 60, 4.99, 299.40),
(7, '2021-04-18', 'Central', 'Akshita', 'Unknown', 75, 1.99, 149.25),
(8, '2021-05-05', 'Central', 'Ruchika', 'Books', 90, 4.99, 449.10),
(9, '2021-05-22', 'West', 'Surbhi', 'Unknown', 32, 1.99, 63.68),
(10, '2021-06-08', 'East', 'Jones', 'Suitcase', 60, 8.99, 539.40);

INSERT INTO Stores_Table (Store_Id, StoreType, Assortment, CompetitionDistance, Month, Year, PromoInterval) VALUES
(1, 'c', 36, 1270, 9, 2008, 'Jan'),
(2, 'a', 35, 570, 11, 2007, 'Feb'),
(3, 'a', 18, 14130, 12, 2006, 'Mar'),
(4, 'c', 36, 620, 9, 2009, NULL),
(5, 'a', 44, 29910, 4, 2015, 'May'),
(6, 'a', 19, 310, 12, 2013, 'June'),
(7, 'a', 43, 24000, 4, 2013, NULL),
(8, 'a', 33, 7520, 10, 2014, 'Aug'),
(9, 'a', 18, 2030, 8, 2000, NULL),
(10, 'a', 10, 3160, 9, 2009, 'Oct');

Select * from Orders_Table

Select * from Stores_Table

ALTER TABLE Stores_Table
ADD Store_Names VARCHAR(255);

UPDATE Stores_Table SET Store_Names = 'Car' WHERE Store_Id = 1;
UPDATE Stores_Table SET Store_Names = 'Bikes' WHERE Store_Id = 2;
UPDATE Stores_Table SET Store_Names = 'Hardware' WHERE Store_Id = 3;
UPDATE Stores_Table SET Store_Names = 'Electrics' WHERE Store_Id = 4;
UPDATE Stores_Table SET Store_Names = 'Fibers' WHERE Store_Id = 5;
UPDATE Stores_Table SET Store_Names = 'Elastics' WHERE Store_Id = 6;
UPDATE Stores_Table SET Store_Names = 'Books' WHERE Store_Id = 7;
UPDATE Stores_Table SET Store_Names = 'Shoes' WHERE Store_Id = 8;
UPDATE Stores_Table SET Store_Names = 'Clothes' WHERE Store_Id = 9;
UPDATE Stores_Table SET Store_Names = 'Scraps' WHERE Store_Id = 10;

Select * from Orders_Table
ALTER TABLE Orders_Table ADD Store_Id INT;
ALTER TABLE Orders_Table ADD CONSTRAINT FK_Store_Id FOREIGN KEY (Store_Id) REFERENCES Stores_Table(Store_Id);

UPDATE Orders_Table SET Store_Id = 1 WHERE Order_Id = 1;
UPDATE Orders_Table SET Store_Id = 2 WHERE Order_Id = 2;
UPDATE Orders_Table SET Store_Id = 3 WHERE Order_Id = 3;
UPDATE Orders_Table SET Store_Id = 4 WHERE Order_Id = 4;
UPDATE Orders_Table SET Store_Id = 5 WHERE Order_Id = 5;
UPDATE Orders_Table SET Store_Id = 6 WHERE Order_Id = 6;
UPDATE Orders_Table SET Store_Id = 7 WHERE Order_Id = 7;
UPDATE Orders_Table SET Store_Id = 8 WHERE Order_Id = 8;
UPDATE Orders_Table SET Store_Id = 9 WHERE Order_Id = 9;
UPDATE Orders_Table SET Store_Id = 10 WHERE Order_Id = 10;

UPDATE Orders_Table SET Order_Item = 'Compass' WHERE Order_Id = 3;
UPDATE Orders_Table SET Order_Item = 'Torch' WHERE Order_Id = 4;
UPDATE Orders_Table SET Order_Item = 'Phone' WHERE Order_Id = 5;
UPDATE Orders_Table SET Order_Item = 'Laptop' WHERE Order_Id = 7;
UPDATE Orders_Table SET Order_Item = 'Box' WHERE Order_Id = 9;

Select * from Orders_Table

Select * from Stores_Table

UPDATE Stores_Table SET PromoInterval = 'April' WHERE Store_Id = 4;
UPDATE Stores_Table SET PromoInterval = 'July' WHERE Store_Id = 7;
UPDATE Stores_Table SET PromoInterval = 'Sept' WHERE Store_Id = 9;

Exec sp_rename 'Stores_table.Assortment','Store_nos','Column';

Exec sp_rename 'Orders_table.Order_Item','Item_Name','Column';
Exec sp_rename 'Orders_table.Rep','Customers_name','Column';

Select * from Orders_Table
Order by Unit_Cost desc, Total_Price Asc;

Exec sp_rename 'Orders_table.Customers_name','Cus_name','Column';

Select Region, count(Cus_name) from Orders_Table
Group by Region

Select sum(Total_Price) As Total_Price_Final, sum(Unit_cost) as Total_Unit_Cost from Orders_Table

Create View Order_Stores_Table As
Select
o.OrderDate,o.Unit_Cost,s.StoreType,s.Year from Orders_Table o
Join Stores_Table s on o.Store_Id= s.Store_Id

SELECT * FROM Order_Stores_Table;

Select Item_Name, Region from Orders_Table
Where Order_Id in (4,5,6,9)

Select * from Orders_Table

Select * from Stores_Table

Select Year from Stores_Table
where CompetitionDistance in (29910,310,3160)

Select Item_Name from Orders_Table
where Total_Price>200 and Total_Price<400

Exec sp_rename 'Stores_Table.CompetitionDistance', 'CD', 'Column'
Select Sum(CD) As Total_CD from Stores_Table 

SELECT COUNT(StoreType) AS StoreType_Count, COUNT(CD) AS CD_Count FROM Stores_Table;

Select * from Orders_Table Cross Join Stores_Table

DROP DATABASE Order_Stores_Data;