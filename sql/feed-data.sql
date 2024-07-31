-- Insert data into MS_Customers table
INSERT ALL
    INTO MS_Customers VALUES (1, 'user1', 'password1', '9055551212', 'John', 'Doe', '123 Elm St')
    INTO MS_Customers VALUES (2, 'user2', 'password2', '9055551213', 'Jane', 'Smith', '456 Oak St')
    INTO MS_Customers VALUES (3, 'user3', 'password3', '9055551214', 'Alice', 'Johnson', '789 Pine St')
    INTO MS_Customers VALUES (4, 'user4', 'password4', '9055551215', 'Bob', 'Brown', '101 Maple St')
    INTO MS_Customers VALUES (5, 'user5', 'password5', '9055551216', 'Charlie', 'Davis', '202 Birch St')
SELECT * FROM dual;

-- Insert data into MS_Products table
INSERT ALL
    INTO MS_Products VALUES (1, 'Fresh banana', 0.99, 'http://example.com/banana.jpg', 'Banana')
    INTO MS_Products VALUES (2, 'Fresh apple', 1.29, 'http://example.com/apple.jpg', 'Apple')
    INTO MS_Products VALUES (3, 'Fresh orange', 1.49, 'http://example.com/orange.jpg', 'Orange')
    INTO MS_Products VALUES (4, 'Fresh grape', 2.99, 'http://example.com/grape.jpg', 'Grape')
    INTO MS_Products VALUES (5, 'Fresh pineapple', 3.99, 'http://example.com/pineapple.jpg', 'Pineapple')
SELECT * FROM dual;

-- Insert data into MS_Administrators table
INSERT ALL
    INTO MS_Administrators VALUES (1, 'admin1', 'adminpass1', 'admin1@mail.com', '9055551217')
    INTO MS_Administrators VALUES (2, 'admin2', 'adminpass2', 'admin2@mail.com', '9055551218')
    INTO MS_Administrators VALUES (3, 'admin3', 'adminpass3', 'admin3@mail.com', '9055551219')
    INTO MS_Administrators VALUES (4, 'admin4', 'adminpass4', 'admin4@mail.com', '9055551220')
    INTO MS_Administrators VALUES (5, 'admin5', 'adminpass5', 'admin5@mail.com', '9055551221')
SELECT * FROM dual;

-- Insert data into MS_Inventory table
INSERT ALL
    INTO MS_Inventory VALUES (1, 500, 1, 1)
    INTO MS_Inventory VALUES (2, 300, 2, 2)
    INTO MS_Inventory VALUES (3, 200, 3, 3)
    INTO MS_Inventory VALUES (4, 150, 4, 4)
    INTO MS_Inventory VALUES (5, 100, 5, 5)
SELECT * FROM dual;

-- Insert data into MS_Orders table
INSERT ALL
    INTO MS_Orders VALUES (1, 20.99, TO_DATE('2023-12-31', 'YYYY-MM-DD'), 1)
    INTO MS_Orders VALUES (2, 15.49, TO_DATE('2024-01-01', 'YYYY-MM-DD'), 2)
    INTO MS_Orders VALUES (3, 30.99, TO_DATE('2024-01-02', 'YYYY-MM-DD'), 3)
    INTO MS_Orders VALUES (4, 25.99, TO_DATE('2024-01-03', 'YYYY-MM-DD'), 4)
    INTO MS_Orders VALUES (5, 10.99, TO_DATE('2024-01-04', 'YYYY-MM-DD'), 5)
SELECT * FROM dual;

-- Insert data into MS_OrderItems table
INSERT ALL
    INTO MS_OrderItems VALUES (1, 1, 1, 10)
    INTO MS_OrderItems VALUES (2, 1, 2, 5)
    INTO MS_OrderItems VALUES (3, 2, 3, 20)
    INTO MS_OrderItems VALUES (4, 3, 4, 15)
    INTO MS_OrderItems VALUES (5, 4, 5, 12)
SELECT * FROM dual;

-- Insert data into MS_Payments table
INSERT ALL
    INTO MS_Payments VALUES (1, 1, 'Credit', 20.99, 1)
    INTO MS_Payments VALUES (2, 2, 'Debit', 15.49, 2)
    INTO MS_Payments VALUES (3, 3, 'PayPal', 30.99, 3)
    INTO MS_Payments VALUES (4, 4, 'Credit', 25.99, 4)
    INTO MS_Payments VALUES (5, 5, 'Debit', 10.99, 5)
SELECT * FROM dual;
