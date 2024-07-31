-- Description: This script creates the tables for the database

-- Create the Customers table
CREATE TABLE MS_Customers (
    CustomerID NUMBER(6) PRIMARY KEY,
    Username VARCHAR2(25) NOT NULL,
    Password VARCHAR2(25) NOT NULL,
    PhoneNumber VARCHAR2(25) NOT NULL,
    Firstname VARCHAR2(25) NOT NULL,
    Lastname VARCHAR2(25) NOT NULL,
    AddressLine VARCHAR2(255) NOT NULL
);

-- Create the Products table
CREATE TABLE MS_Products (
    ProductID NUMBER(6) PRIMARY KEY,
    Description VARCHAR2(255),
    Price NUMBER(7,2) NOT NULL,
    ImageURL VARCHAR2(255),
    ProductName VARCHAR2(100) NOT NULL
);

-- Create the Administrators table
CREATE TABLE MS_Administrators (
    AdministratorID NUMBER(6) PRIMARY KEY,
    Username VARCHAR2(25) NOT NULL,
    Password VARCHAR2(25) NOT NULL,
    Email VARCHAR2(25) NOT NULL,
    PhoneNumber VARCHAR2(25) NOT NULL
);

-- Create the Inventory table
CREATE TABLE MS_Inventory (
    InventoryID NUMBER(6) PRIMARY KEY,
    StockNumber NUMBER(6) NOT NULL,
    ProductID NUMBER(6) NOT NULL,
    AdministratorID NUMBER(6) NOT NULL,
    CONSTRAINT fk_product FOREIGN KEY (ProductID) REFERENCES MS_Products(ProductID),
    CONSTRAINT fk_administrator FOREIGN KEY (AdministratorID) REFERENCES MS_Administrators(AdministratorID)
);

-- Create the Orders table
CREATE TABLE MS_Orders (
    OrderID NUMBER(6) PRIMARY KEY,
    TotalCost NUMBER(10,2) NOT NULL,
    DateOfOrder DATE NOT NULL,
    CustomerID NUMBER(10) NOT NULL,
    CONSTRAINT fk_customer FOREIGN KEY (CustomerID) REFERENCES MS_Customers(CustomerID)
);

-- Create the OrderItems table
CREATE TABLE MS_OrderItems (
    OrderItemID NUMBER(6) PRIMARY KEY,
    OrderID NUMBER(6) NOT NULL,
    ProductID NUMBER(6) NOT NULL,
    Quantity NUMBER(10) NOT NULL CHECK (Quantity >= 0),
    CONSTRAINT fk_order FOREIGN KEY (OrderID) REFERENCES MS_Orders(OrderID),
    CONSTRAINT fk_product FOREIGN KEY (ProductID) REFERENCES MS_Products(ProductID)
);

-- Create the Payments table
CREATE TABLE MS_Payments (
    PaymentID NUMBER(10) PRIMARY KEY,
    OrderID NUMBER(10) NOT NULL,
    PaymentMethod VARCHAR2(20) NOT NULL,
    Price NUMBER(10,2) NOT NULL CHECK (Price >= 0),
    CustomerID NUMBER(10) NOT NULL,
    CONSTRAINT fk_order FOREIGN KEY (OrderID) REFERENCES MS_Orders(OrderID),
    CONSTRAINT fk_customer FOREIGN KEY (CustomerID) REFERENCES MS_Customers(CustomerID)
);
