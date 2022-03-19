# Derivco_Stored_Procedure
Stored Procedure (pr_GetOrderSummary) to return a summary of orders from the data in the Northwind database

The results should be able to be filtered by specifying parameters:<br />
 ⦁	Date of the Order (@StartDate and @EndDate)<br />
 ⦁	Nullable Parameter to filter for a specific Employee (@EmployeeID)<br />
 ⦁	Nullable Parameter to filter for a specific Customer (@CustomerID)<br />
<br />
 The columns to be returned are:<br />
  ⦁	EmployeeFullName (TitleOfCourtesy + FirstName + LastName)<br />
  ⦁	Shipper CompanyName<br />
  ⦁	Customer CompanyName<br />
  ⦁	NumberOfOders<br />
⦁	Date<br />
⦁	TotalFreightCost<br />
⦁	NumberOfDifferentProducts<br />
⦁	TotalOrderValue<br />
<br />
The results should be grouped by:<br />
⦁	Order Day (i.e. grouped by day)<br />
⦁	Employee <br />
⦁	Customer<br />
⦁	Shipper<br />
