USE Online_shopping;

-- INSERTING VALUES TO THE TABLE
-- Products 
 INSERT INTO Products(Name,Price,Stock,Category) VALUES
('PS5',55000,10,'Electronics'),
('BOAT SPEAKER',2000,50,'Electronics'),
('NIKE Shoes',1500,30,'Fashion'),
('SAFARI Backpack',1200,20,'Accessories'),
('IPHONE',130000,15,'Electronics');

-- Customers 
INSERT INTO Customers(CustomerID,Name,Email,Phone) VALUES
(100,'Vijay','vijaykrishnan@gmail.com',9876543210),
(101,'Greeshma','krishnargreeshma@gmail.com',1234567890),
(102,'Adithya','adhithya@gmail.com',2342143789),
(103,'Alwin','alwinpl@gmail.com',5678912345),
(104,'Jothish','jothishkumar@gmail.com',8769543125);

-- Orders 
INSERT INTO Orders(CustomerID,OrderDate,TotalAmount) VALUES
(100,'2026-01-10',57000),
(101,'2026-01-15',32000),
(102,'2026-01-20',35000),
(103,'2026-01-25',55000),
(104,'2026-02-01',70000);
 
 -- OrderDetails 
INSERT INTO OrderDetails(OrderID,ProductID,Quantity) VALUES
(11,1,1),  
(11,2,1),  
(12,5,1),  
(12,2,1),   
(13,3,2),   
(13,4,1),   
(13,1,1),   
(14,5,1),  
(15,2,3); 

SELECT * FROM OrderDetails;

SELECT * FROM OrderDetails
WHERE OrderID IN(1,2,3,4,5);
