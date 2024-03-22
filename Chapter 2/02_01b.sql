-- Find how many products sold
SELECT 
COUNT(DISTINCT(ProductID))
AS TotalUniqueProducts,
SUM(Quantity)AS TotalQuantity
FROM OrderItem;