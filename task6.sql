use EcommerceDB;
SELECT *
FROM Customers
WHERE CustomerID = (
    SELECT CustomerID
    FROM Orders
    WHERE OrderDate = (SELECT MAX(OrderDate) FROM Orders)
);

SELECT Customer_Name
FROM Customers C
WHERE EXISTS (
    SELECT 1
    FROM Orders O
    WHERE O.CustomerID = C.CustomerID
);

SELECT Customer_Name
FROM Customers
WHERE CustomerID IN (
    SELECT CustomerID
    FROM Orders
);

SELECT Customer_Name
FROM Customers C
WHERE EXISTS (
    SELECT 1
    FROM Orders O
    WHERE O.CustomerID = C.CustomerID AND O.OrderDate >= '2025-06-25'
);

SELECT Customer_Name, Phone
FROM Customers
WHERE CustomerID = (
    SELECT CustomerID
    FROM Orders
    WHERE OrderID = 205
);
