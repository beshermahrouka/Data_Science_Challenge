--answer a
SELECT COUNT(Orders.OrderID) as 'Count order' FROM Orders INNER JOIN Shippers ON Orders.ShipperID=Shippers.ShipperID WHERE Shippers.ShipperName = 'Speedy Express';
--answer b
SELECT Employees.LastName FROM Orders INNER JOIN Employees ON Orders.EmployeeID=Employees.EmployeeID GROUP BY Employees.LastName ORDER BY Count(Orders.OrderID) DESC LIMIT 1;
--answer c
SELECT Products.ProductName AS 'most ordered product' FROM Orders INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID 
INNER JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID 
INNER JOIN Products ON OrderDetails.ProductID = Products.ProductID 
WHERE Customers.Country = 'Germany' 
GROUP BY Products.ProductName 
ORDER BY COUNT(Products.ProductName) DESC LIMIT 1;
