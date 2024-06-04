SELECT TOP (1000) [ProductKey]
      ,[ProductAlternateKey]
      ,[ProductSubcategoryKey]
      ,[WeightUnitMeasureCode]
      ,[SizeUnitMeasureCode]
      ,[EnglishProductName]
      ,[SpanishProductName]
      ,[FrenchProductName]
      ,[StandardCost]
      ,[FinishedGoodsFlag]
      ,[Color]
      ,[SafetyStockLevel]
      ,[ReorderPoint]
      ,[ListPrice]
      ,[Size]
      ,[SizeRange]
      ,[Weight]
      ,[DaysToManufacture]
      ,[ProductLine]
      ,[DealerPrice]
      ,[Class]
      ,[Style]
      ,[ModelName]
      ,[LargePhoto]
      ,[EnglishDescription]
      ,[FrenchDescription]
      ,[ChineseDescription]
      ,[ArabicDescription]
      ,[HebrewDescription]
      ,[ThaiDescription]
      ,[GermanDescription]
      ,[JapaneseDescription]
      ,[TurkishDescription]
      ,[StartDate]
      ,[EndDate]
      ,[Status],
	  datediff(yyyy,EndDate, StartDate) AS diffDate
  FROM [AdventureWorksDW2019].[dbo].[DimProduct]
  WHERE EndDate IS NOT NULL;

  SELECT *
FROM (
    SELECT TOP (1000) [ProductKey],
          [ProductAlternateKey],
          [ProductSubcategoryKey],
          [WeightUnitMeasureCode],
          [SizeUnitMeasureCode],
          [EnglishProductName],
          [SpanishProductName],
          [FrenchProductName],
          [StandardCost],
          [FinishedGoodsFlag],
          [Color],
          [SafetyStockLevel],
          [ReorderPoint],
          [ListPrice],
          [Size],
          [SizeRange],
          [Weight],
          [DaysToManufacture],
          [ProductLine],
          [DealerPrice],
          [Class],
          [Style],
          [ModelName],
          [LargePhoto],
          [EnglishDescription],
          [FrenchDescription],
          [ChineseDescription],
          [ArabicDescription],
          [HebrewDescription],
          [ThaiDescription],
          [GermanDescription],
          [JapaneseDescription],
          [TurkishDescription],
          [StartDate],
          [EndDate],
          [Status],
          MONTH(EndDate) AS Extractmonth
    FROM [AdventureWorksDW2019].[dbo].[DimProduct]
) AS ProductWithMonth
WHERE Extractmonth IS NOT NULL;

SELECT *
FROM (
    SELECT TOP (1000) [ProductKey],
          [ProductAlternateKey],
          [ProductSubcategoryKey],
          [WeightUnitMeasureCode],
          [SizeUnitMeasureCode],
          [EnglishProductName],
          [SpanishProductName],
          [FrenchProductName],
          [StandardCost],
          [FinishedGoodsFlag],
          [Color],
          [SafetyStockLevel],
          [ReorderPoint],
          [ListPrice],
          [Size],
          [SizeRange],
          [Weight],
          [DaysToManufacture],
          [ProductLine],
          [DealerPrice],
          [Class],
          [Style],
          [ModelName],
          [LargePhoto],
          [EnglishDescription],
          [FrenchDescription],
          [ChineseDescription],
          [ArabicDescription],
          [HebrewDescription],
          [ThaiDescription],
          [GermanDescription],
          [JapaneseDescription],
          [TurkishDescription],
          [StartDate],
          [EndDate],
          [Status],
          datename(month,EndDate) AS Extractmonth
    FROM [AdventureWorksDW2019].[dbo].[DimProduct]
) AS ProductWithMonth
WHERE Extractmonth IS NOT NULL;