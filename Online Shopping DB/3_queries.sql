SELECT * FROM OrderDetails;

SELECT * FROM OrderDetails
WHERE OrderID IN(1,2,3,4,5);

-- Find Top 5 Selling Products
SELECT p.Name,SUM(od.Quantity) AS Total_Sold
FROM OrderDetails od
JOIN Products p ON od.ProductID=p.ProductID
GROUP BY p.ProductID,p.Name
ORDER BY Total_Sold DESC
LIMIT 5;

-- Find Top 5 Selling Products
SELECT * FROM Orders
WHERE OrderDate>=CURRENT_DATE-INTERVAL 30 DAY;

-- Calculate Total Sales Revenue
SELECT SUM(TotalAmount) AS Total_Revenue
FROM Orders;
