-- Drop the Payments table
DROP TABLE MS_Payments CASCADE CONSTRAINTS;

-- Drop the OrderItems table
DROP TABLE MS_OrderItems CASCADE CONSTRAINTS;

-- Drop the Orders table
DROP TABLE MS_Orders CASCADE CONSTRAINTS;

-- Drop the Inventory table
DROP TABLE MS_Inventory CASCADE CONSTRAINTS;

-- Drop the Administrators table
DROP TABLE MS_Administrators CASCADE CONSTRAINTS;

-- Drop the Products table
DROP TABLE MS_Products CASCADE CONSTRAINTS;

-- Drop the Customers table
DROP TABLE MS_Customers CASCADE CONSTRAINTS;

-- Drop the CustomerOrderSummary view
DROP VIEW CustomerOrderSummary;

-- Drop the ProductSalesSummary view
DROP VIEW ProductSalesSummary;

-- Drop the InventoryStatus view
DROP VIEW InventoryStatus;

-- Drop the PaymentSummary view
DROP VIEW PaymentSummary;
