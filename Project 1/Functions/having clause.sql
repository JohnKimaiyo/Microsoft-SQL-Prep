SELECT MAX(VacationHours) 
   
  FROM [AdventureWorksDW2019].[dbo].[DimEmployee]
  HAVING max(VacationHours) >20;