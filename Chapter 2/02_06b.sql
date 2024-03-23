-- Find sales by month and year
SELECT 
MONTHNAME(CreationDate) as MonthName,
YEAR(CreationDate) as OrderYear,
COUNT(Orders.OrderID) as TotalOrders,
SUM(Quantity) AS TotalQuantity,
SUM(TotalDue) as TotalAmount
From Orders
LEFT OUTER JOIN OrderItem
ON Orders.OrderID = OrderItem.OrderID
GROUP BY MonthName, OrderYear
ORDER BY OrderYear, MONTH(CreationDate);