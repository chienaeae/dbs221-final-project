-- View 1: Customer Order Summary
-- This view provides a summary of orders placed by each customer, including total order count and total amount spent.
CREATE VIEW CustomerOrderSummary AS
SELECT 
    c.CustomerID,
    c.Username,
    c.Firstname || ' ' || c.Lastname AS CustomerName,
    COUNT(o.OrderID) AS TotalOrders,
    SUM(o.TotalCost) AS TotalSpent
FROM 
    MS_Customers c
    JOIN MS_Orders o ON c.CustomerID = o.CustomerID
GROUP BY 
    c.CustomerID, 
    c.Username, 
    c.Firstname, 
    c.Lastname;

-- View 2: Product Sales Summary
-- This view provides a summary of sales for each product, including the total quantity sold and total revenue generated.
CREATE VIEW ProductSalesSummary AS
SELECT 
    p.ProductID,
    p.ProductName,
    SUM(oi.Quantity) AS TotalQuantitySold,
    SUM(oi.Quantity * p.Price) AS TotalRevenue
FROM 
    MS_Products p
    JOIN MS_OrderItems oi ON p.ProductID = oi.ProductID
GROUP BY 
    p.ProductID, 
    p.ProductName;

-- View 3: Inventory Status
-- This view provides the current status of the inventory, including stock levels for each product.
CREATE VIEW InventoryStatus AS
SELECT 
    i.ProductID,
    p.ProductName,
    i.StockNumber AS CurrentStock
FROM 
    MS_Inventory i
    JOIN MS_Products p ON i.ProductID = p.ProductID;

-- View 4: Payment Summary
-- This view provides a summary of payments made, including total payment amount by each customer.
CREATE VIEW PaymentSummary AS
SELECT 
    p.CustomerID,
    c.Username,
    c.Firstname || ' ' || c.Lastname AS CustomerName,
    COUNT(p.PaymentID) AS TotalPayments,
    SUM(p.Price) AS TotalPaymentAmount
FROM 
    MS_Payments p
    JOIN MS_Customers c ON p.CustomerID = c.CustomerID
GROUP BY 
    p.CustomerID, 
    c.Username, 
    c.Firstname, 
    c.Lastname;