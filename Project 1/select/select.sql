-- Distint --

SELECT DISTINCT  Title
FROM [AdventureWorksDW2019].[dbo].[DimEmployee]

-- case statement -- 
SELECT TOP (1000) [EmployeeKey]
      ,[ParentEmployeeKey]
      ,[EmployeeNationalIDAlternateKey]
      ,[ParentEmployeeNationalIDAlternateKey]
      ,[SalesTerritoryKey]
      ,[FirstName]
      ,[LastName]
      ,[MiddleName]
      ,[NameStyle]
      ,[Title]
      ,[HireDate]
      ,[BirthDate]
      ,[LoginID]
      ,[EmailAddress]
      ,[Phone]
      ,[MaritalStatus]
      ,[EmergencyContactName]
      ,[EmergencyContactPhone]
      ,[SalariedFlag]
      ,[Gender]
      ,[PayFrequency]
      ,[BaseRate]
      ,[VacationHours]
      ,[SickLeaveHours]
      ,[CurrentFlag]
      ,[SalesPersonFlag]
      ,[DepartmentName]
      ,[StartDate]
      ,[EndDate]
      ,[Status]
      ,[EmployeePhoto],

	  CASE

	  WHEN VacationHours > 70 THEN 'Vacation hours ove rlimit' 
	  ELSE 'Vacation Hours within Limit'
	  END AS VacatioHourLimit
  FROM [AdventureWorksDW2019].[dbo].[DimEmployee]