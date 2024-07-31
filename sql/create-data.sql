-- Description: This script creates the tables for the database

-- Create the Customers table
CREATE TABLE Customers (
    CustomerID NUMBER(6) PRIMARY KEY,
    Username VARCHAR2(25) NOT NULL,
    Password VARCHAR2(25) NOT NULL,
    PhoneNumber VARCHAR2(25) NOT NULL,
    Firstname VARCHAR2(25) NOT NULL,
    Lastname VARCHAR2(25) NOT NULL,
    AddressLine VARCHAR2(255) NOT NULL
);

-- Create the Products table
CREATE TABLE Products (
    ProductID NUMBER(6) PRIMARY KEY,
    Description VARCHAR2(255),
    Price NUMBER(7,2) NOT NULL,
    ImageURL VARCHAR2(255),
    ProductName VARCHAR2(100) NOT NULL
);

-- Create the Administrators table
CREATE TABLE Administrators (
    AdministratorID NUMBER(6) PRIMARY KEY,
    Username VARCHAR2(25) NOT NULL,
    Password VARCHAR2(25) NOT NULL,
    Email VARCHAR2(25) NOT NULL,
    PhoneNumber VARCHAR2(25) NOT NULL
);

-- Create the Inventory table
CREATE TABLE Inventory (
    InventoryID NUMBER(6) PRIMARY KEY,
    StockNumber NUMBER(6) NOT NULL,
    ProductID NUMBER(6) NOT NULL,
    AdministratorID NUMBER(6) NOT NULL,
    CONSTRAINT fk_product FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    CONSTRAINT fk_administrator FOREIGN KEY (AdministratorID) REFERENCES Administrators(AdministratorID)
);

-- Create the Orders table
CREATE TABLE Orders (
    OrderID NUMBER(6) PRIMARY KEY,
    TotalCost NUMBER(10,2) NOT NULL,
    DateOfOrder DATE NOT NULL,
    CustomerID NUMBER(10) NOT NULL,
    CONSTRAINT fk_customer FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Create the OrderItems table
CREATE TABLE OrderItems (
    OrderItemID NUMBER(6) PRIMARY KEY,
    OrderID NUMBER(6) NOT NULL,
    ProductID NUMBER(6) NOT NULL,
    Quantity NUMBER(10) NOT NULL CHECK (Quantity >= 0),
    CONSTRAINT fk_order FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    CONSTRAINT fk_product FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- Create the Payments table
CREATE TABLE Payments (
    PaymentID NUMBER(10) PRIMARY KEY,
    OrderID NUMBER(10) NOT NULL,
    PaymentMethod VARCHAR2(20) NOT NULL,
    Price NUMBER(10,2) NOT NULL CHECK (Price >= 0),
    CustomerID NUMBER(10) NOT NULL,
    CONSTRAINT fk_order FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    CONSTRAINT fk_customer FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
