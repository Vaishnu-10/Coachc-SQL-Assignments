Create database Brands;
Create database Products;
-------------------

Use Brands
Create table Items_table(
Item_id Int Primary Key,
Item_description varchar(255),
vendor_nos Int,
vendor_name Varchar(255),
bottle_size int,
bottle_price decimal(10,2)
);

--------------------------
Use Products;
Create Table Product_table(
Product_id Int Primary Key,
Country varchar(255),
Product varchar(255),
Units_sold Decimal(10,1),
Manufacturing_price Decimal(10,2),
Sale_pirce Decimal(10,2),
Gross_sales Decimal(10,2),
Sales Decimal(10,2),
Cogs Decimal(10,2),
Profit Decimal(10,2),
Date Date,
Month_Number Int,
Month_name varchar(50),
Year Int
);

------------------------

Use Brands;
Select * from Items_table;
INSERT INTO ITEMS_Table (Item_id, Item_description, vendor_nos, vendor_name, bottle_size, bottle_price)
VALUES
(1, 'Travis Hasse Apple Pie', 305, 'Mhw Ltd', 750, 9.77),
(2, 'D''aristi Xtabentun', 391, 'Anchor Distilling (preiss Imports)', 750, 14.12),
(3, 'Hiram Walker Peach Brandy', 370, 'Pernod Ricard Usa/austin Nichols', 1000, 6.50),
(4, 'Oak Cross Whisky', 305, 'Mhw Ltd', 750, 25.33),
(5, 'Uv Red(cherry) Vodka', 380, 'Phillips Beverage Company', 200, 1.97),
(6, 'Heaven Hill Old Style White Label', 259, 'Heaven Hill Distilleries Inc.', 750, 6.37),
(7, 'Hyde Herbal Liqueur', 194, 'Fire Tail Brands Llc', 750, 5.06),
(8, 'Dupont Calvados Fine Reserve', 403, 'Robert Kacher Selections', 750, 23.61);

------------------------------------

Sure, here are the SQL queries to perform the tasks you specified:

1. Create Databases
sql
Copy code
CREATE DATABASE Brands;
CREATE DATABASE Products;
2. Create Tables in the Databases
In the Brands Database:
sql
Copy code
USE Brands;

CREATE TABLE ITEMS_Table (
    Item_Id INT PRIMARY KEY,
    item_description VARCHAR(255),
    vendor_nos INT,
    vendor_name VARCHAR(255),
    bottle_size INT,
    bottle_price DECIMAL(10, 2)
);
In the Products Database:
sql
Copy code
USE Products;

CREATE TABLE PRODUCT_Table (
    Product_Id INT PRIMARY KEY,
    Country VARCHAR(255),
    Product VARCHAR(255),
    Units_Sold DECIMAL(10, 1),
    Manufacturing_Price DECIMAL(10, 2),
    Sale_Price DECIMAL(10, 2),
    Gross_Sales DECIMAL(10, 2),
    Sales DECIMAL(10, 2),
    COGS DECIMAL(10, 2),
    Profit DECIMAL(10, 2),
    Date DATE,
    Month_Number INT,
    Month_Name VARCHAR(50),
    Year INT
);
3. Insert Records into the Tables
Insert Records into ITEMS_Table:
sql
Copy code
USE Brands;

INSERT INTO ITEMS_Table (Item_Id, item_description, vendor_nos, vendor_name, bottle_size, bottle_price)
VALUES
(1, 'Travis Hasse Apple Pie', 305, 'Mhw Ltd', 750, 9.77),
(2, 'D\'aristi Xtabentun', 391, 'Anchor Distilling (preiss Imports)', 750, 14.12),
(3, 'Hiram Walker Peach Brandy', 370, 'Pernod Ricard Usa/austin Nichols', 1000, 6.50),
(4, 'Oak Cross Whisky', 305, 'Mhw Ltd', 750, 25.33),
(5, 'Uv Red(cherry) Vodka', 380, 'Phillips Beverage Company', 200, 1.97),
(6, 'Heaven Hill Old Style White Label', 259, 'Heaven Hill Distilleries Inc.', 750, 6.37),
(7, 'Hyde Herbal Liqueur', 194, 'Fire Tail Brands Llc', 750, 5.06),
(8, 'Dupont Calvados Fine Reserve', 403, 'Robert Kacher Selections', 750, 23.61);
-----------------------------------
USE Products;
Select * from Product_table
INSERT INTO PRODUCT_Table (Product_Id, Country, Product, Units_Sold, Manufacturing_Price, Sale_Pirce, Gross_Sales, Sales, COGS, Profit, Date, Month_Number, Month_Name, Year)
VALUES
(1, 'Canada', 'Carretera', 1618.5, 3.00, 20.00, 32370.00, 32370.00, 16185.00, 16185.00, '2014-01-01', 1, 'January', 2014),
(2, 'Germany', 'Carretera', 1321, 3.00, 20.00, 26420.00, 26420.00, 13210.00, 13210.00, '2015-01-01', 1, 'January', 2015),
(3, 'France', 'Carretera', 2178, 3.00, 15.00, 32670.00, 32670.00, 21780.00, 10890.00, '2016-06-01', 6, 'June', 2016),
(4, 'Germany', 'Carretera', 888, 3.00, 15.00, 13320.00, 13320.00, 8880.00, 4440.00, '2017-06-01', 6, 'June', 2017),
(5, 'Mexico', 'Carretera', 2470, 3.00, 15.00, 37050.00, 37050.00, 24700.00, 12350.00, '2018-06-01', 6, 'June', 2018),
(6, 'Germany', 'Carretera', 1513, 3.00, 350.00, 529550.00, 529550.00, 393380.00, 136170.00, '2019-12-01', 12, 'December', 2019),
(7, 'Germany', 'Montana', 921, 5.00, 15.00, 13815.00, 13815.00, 9210.00, 4605.00, '2020-03-01', 3, 'March', 2020),
(8, 'Canada', 'Montana', 2518, 5.00, 12.00, 30216.00, 30216.00, 7554.00, 22662.00, '2021-06-01', 6, 'June', 2021);


-----------------------------------
Use Products;
Delete from Product_table
Where Units_sold In (1618.5,888,2470);
Select * from Product_table;

------------------------
Drop Table Product_table;

-----------------------
USE Products;

CREATE TABLE PRODUCT_Table (
    Product_Id INT PRIMARY KEY,
    Country VARCHAR(255),
    Product VARCHAR(255),
    Units_Sold DECIMAL(10, 1),
    Manufacturing_Price DECIMAL(10, 2),
    Sale_Price DECIMAL(10, 2),
    Gross_Sales DECIMAL(10, 2),
    Sales DECIMAL(10, 2),
    COGS DECIMAL(10, 2),
    Profit DECIMAL(10, 2),
    Date DATE,
    Month_Number INT,
    Month_Name VARCHAR(50),
    Year INT
);
USE Products;
Select * from Product_table
INSERT INTO PRODUCT_Table (Product_Id, Country, Product, Units_Sold, Manufacturing_Price, Sale_Price, Gross_Sales, Sales, COGS, Profit, Date, Month_Number, Month_Name, Year)
VALUES
(1, 'Canada', 'Carretera', 1618.5, 3.00, 20.00, 32370.00, 32370.00, 16185.00, 16185.00, '2014-01-01', 1, 'January', 2014),
(2, 'Germany', 'Carretera', 1321, 3.00, 20.00, 26420.00, 26420.00, 13210.00, 13210.00, '2015-01-01', 1, 'January', 2015),
(3, 'France', 'Carretera', 2178, 3.00, 15.00, 32670.00, 32670.00, 21780.00, 10890.00, '2016-06-01', 6, 'June', 2016),
(4, 'Germany', 'Carretera', 888, 3.00, 15.00, 13320.00, 13320.00, 8880.00, 4440.00, '2017-06-01', 6, 'June', 2017),
(5, 'Mexico', 'Carretera', 2470, 3.00, 15.00, 37050.00, 37050.00, 24700.00, 12350.00, '2018-06-01', 6, 'June', 2018),
(6, 'Germany', 'Carretera', 1513, 3.00, 350.00, 529550.00, 529550.00, 393380.00, 136170.00, '2019-12-01', 12, 'December', 2019),
(7, 'Germany', 'Montana', 921, 5.00, 15.00, 13815.00, 13815.00, 9210.00, 4605.00, '2020-03-01', 3, 'March', 2020),
(8, 'Canada', 'Montana', 2518, 5.00, 12.00, 30216.00, 30216.00, 7554.00, 22662.00, '2021-06-01', 6, 'June', 2021);
-----------------------------------
Select Sum(Sale_price) As Total_Sale_Price,Sum(Gross_Sales) as Total_Gross_Sales From Product_Table;

----------------
SELECT TOP 1 Year, SUM(Sales) AS Total_Sales
FROM Product_table
GROUP BY Year
ORDER BY Total_Sales DESC;
---------------------------------------------------------
Select Product from Product_table 
Where Sales= 37050.00

----------------------------------
Select Distinct(Country) from Product_Table 
Where Profit between 4605 And 22662.00

----------------------

Select Product_id
From Product_table
where COGS = 24700.00;

-----------------
Use Brands
Select * from Items_table

-------------------------
Select Item_description from Items_table
Where bottle_size= 750
---------------------------------------
Select vendor_name from items_table
where vendor_nos in (305,380,391)
------------------------------
Select sum(bottle_price)as Total_Bottle_Price from Items_Table
--------------------------

SELECT *
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
WHERE TABLE_NAME = 'Items_table'
  AND CONSTRAINT_TYPE = 'PRIMARY KEY';
  --------------------------------

Select Item_id from Items_table
Where bottle_price= 5.06

-------------------------
Use Brands
Select * from Items_Table

Use Products
Select * from Product_table

-------------------------------
SELECT *
FROM Brands.dbo.Items_table
INNER JOIN Products.dbo.Product_table ON Items_table.Item_Id = Product_table.Product_Id;
-----------------------
SELECT *
FROM Brands.dbo.Items_table
Full Outer JOIN Products.dbo.Product_table ON Items_table.Item_Id = Product_table.Product_Id;

---------------------------
SELECT *
FROM Brands.dbo.Items_table
Left JOIN Products.dbo.Product_table ON Items_table.Item_Id = Product_table.Product_Id;

--------------------
SELECT *
FROM Brands.dbo.Items_table
Right Join Products.dbo.Product_table ON Items_table.Item_Id = Product_table.Product_Id;
------------------------------
SELECT *
FROM Brands.dbo.Items_table
Cross Join Products.dbo.Product_table 
--------------------------------
Select i.item_description, p.product from Brands.dbo.Items_table i
Inner Join Products.dbo.Product_table p 
On i.item_Id=p.product_id
Where p.gross_sales= 13320.00;
-----------------------------

SELECT PARSENAME(REPLACE(item_description, ' ', '.'), 2) AS Item_desc1,
       PARSENAME(REPLACE(item_description, ' ', '.'), 1) AS Item_desc2
FROM Brands.dbo.Items_table;

