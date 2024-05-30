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
	  
	  WHEN VacationHours BETWEEN 40 AND  70 THEN 'Average hours ' 
	  ELSE 'Vacation Hours within Limit'
	  END AS VacationHoursStatus
FROM [AdventureWorksDW2019].[dbo].[DimEmployee];
