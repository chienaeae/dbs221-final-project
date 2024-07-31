-- Insert data into Customers table
INSERT INTO Customers (CustomerID, Username, Password, PhoneNumber, Firstname, Lastname, AddressLine) VALUES
(1, 'user1', 'password1', '9055551212', 'John', 'Doe', '123 Elm St'),
(2, 'user2', 'password2', '9055551213', 'Jane', 'Smith', '456 Oak St'),
(3, 'user3', 'password3', '9055551214', 'Alice', 'Johnson', '789 Pine St'),
(4, 'user4', 'password4', '9055551215', 'Bob', 'Brown', '101 Maple St'),
(5, 'user5', 'password5', '9055551216', 'Charlie', 'Davis', '202 Birch St');

-- Insert data into Products table
INSERT INTO Products (ProductID, Description, Price, ImageURL, ProductName) VALUES
(1, 'Fresh banana', 0.99, 'http://example.com/banana.jpg', 'Banana'),
(2, 'Fresh apple', 1.29, 'http://example.com/apple.jpg', 'Apple'),
(3, 'Fresh orange', 1.49, 'http://example.com/orange.jpg', 'Orange'),
(4, 'Fresh grape', 2.99, 'http://example.com/grape.jpg', 'Grape'),
(5, 'Fresh pineapple', 3.99, 'http://example.com/pineapple.jpg', 'Pineapple');

-- Insert data into Administrators table
INSERT INTO Administrators (AdministratorID, Username, Password, Email, PhoneNumber) VALUES
(1, 'admin1', 'adminpass1', 'admin1@mail.com', '9055551217'),
(2, 'admin2', 'adminpass2', 'admin2@mail.com', '9055551218'),
(3, 'admin3', 'adminpass3', 'admin3@mail.com', '9055551219'),
(4, 'admin4', 'adminpass4', 'admin4@mail.com', '9055551220'),
(5, 'admin5', 'adminpass5', 'admin5@mail.com', '9055551221');

-- Insert data into Inventory table
INSERT INTO Inventory (InventoryID, StockNumber, ProductID, AdministratorID) VALUES
(1, 500, 1, 1),
(2, 300, 2, 2),
(3, 200, 3, 3),
(4, 150, 4, 4),
(5, 100, 5, 5);

-- Insert data into Orders table
INSERT INTO Orders (OrderID, TotalCost, DateOfOrder, CustomerID) VALUES
(1, 20.99, TO_DATE('2023-12-31', 'YYYY-MM-DD'), 1),
(2, 15.49, TO_DATE('2024-01-01', 'YYYY-MM-DD'), 2),
(3, 30.99, TO_DATE('2024-01-02', 'YYYY-MM-DD'), 3),
(4, 25.99, TO_DATE('2024-01-03', 'YYYY-MM-DD'), 4),
(5, 10.99, TO_DATE('2024-01-04', 'YYYY-MM-DD'), 5);

-- Insert data into OrderItems table
INSERT INTO OrderItems (OrderItemID, OrderID, ProductID, Quantity) VALUES
(1, 1, 1, 10),
(2, 1, 2, 5),
(3, 2, 3, 20),
(4, 3, 4, 15),
(5, 4, 5, 12);

-- Insert data into Payments table
INSERT INTO Payments (PaymentID, OrderID, PaymentMethod, Price, CustomerID) VALUES
(1, 1, 'Credit', 20.99, 1),
(2, 2, 'Debit', 15.49, 2),
(3, 3, 'PayPal', 30.99, 3),
(4, 4, 'Credit', 25.99, 4),
(5, 5, 'Debit', 10.99, 5);
