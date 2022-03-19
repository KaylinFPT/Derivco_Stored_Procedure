USE Northwind
GO


--CREATE PROCEDURE pr_GetOrderSummary @StartDate datetime, @EndDate datetime, @EmployeeID INT, @CustomerID nvarchar(10)
--AS

--SELECT Employees.TitleOfCourtesy + ' ' + Employees.FirstName + ' ' + Employees.LastName AS 'Employee Full Name', Shippers.CompanyName AS 'Shipper Company Name' , Customers.CompanyName AS 'Customers Company Name' , count(Orders.OrderID) AS 'Number Of Orders', Orders.OrderDate AS 'Date',
--Orders.Freight * count(Orders.OrderID) AS 'Total Frieght Cost', Count([Order Details].ProductID) AS 'Number Of Different Products', sum([Order Details].UnitPrice * [Order Details].Quantity) AS 'Total Order Value'

--FROM Orders

--INNER JOIN [Order Details] ON Orders.OrderID = [Order Details].OrderID
--INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
--INNER JOIN Shippers ON Orders.ShipVia = Shippers.ShipperID
--INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID

--WHERE ((Orders.OrderDate Between @StartDate AND @EndDate and Orders.EmployeeID = @EmployeeID and Orders.CustomerID = @CustomerID) OR 
--(Orders.OrderDate Between @StartDate AND  @EndDate AND  Orders.EmployeeID = @EmployeeID AND @CustomerID IS NULL ) OR
--(Orders.OrderDate Between @StartDate AND  @EndDate AND @EmployeeID IS NULL AND Orders.CustomerID = @CustomerID ) OR
--(Orders.OrderDate Between @StartDate AND  @EndDate AND @EmployeeID IS NULL AND @CustomerID IS NULL ))

--GROUP BY Orders.OrderID,Employees.TitleOfCourtesy, Employees.FirstName,Employees.LastName, Shippers.CompanyName, Customers.CompanyName, Orders.OrderDate,Orders.Freight



exec pr_GetOrderSummary @StartDate='1 Jan 1996', @EndDate='31 Aug 1996', @EmployeeID=NULL , @CustomerID=NULL

exec pr_GetOrderSummary @StartDate='1 Jan 1996', @EndDate='31 Aug 1996', @EmployeeID=5 , @CustomerID=NULL

exec pr_GetOrderSummary @StartDate='1 Jan 1996', @EndDate='31 Aug 1996', @EmployeeID=NULL , @CustomerID='VINET'

exec pr_GetOrderSummary @StartDate='1 Jan 1996', @EndDate='31 Aug 1996', @EmployeeID=5 , @CustomerID='VINET'
