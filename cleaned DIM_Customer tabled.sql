--Cleaned DIM.Customer Table
SELECT 
  c.CustomerKey as [CustomerKey], 
  --,[GeographyKey]
  --,[CustomerAlternateKey]
  -- ,[Title]
  c.FirstName AS [FirstName], 
  --,[MiddleName]
  c.LastName AS [LastName], 
  firstname + ' ' + lastname AS [Full Name], 
  --,[NameStyle]
  --,[BirthDate]
  --,[MaritalStatus]
  --,[Suffix]
  CASE Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender, 
  --,[EmailAddress]
  --,[YearlyIncome]
  --,[TotalChildren]
  --,[NumberChildrenAtHome]
  --,[EnglishEducation]
  --,[SpanishEducation]
  --,[FrenchEducation]
  --,[EnglishOccupation]
  --,[SpanishOccupation]
  --,[FrenchOccupation]
  --,[HouseOwnerFlag]
  --,[NumberCarsOwned]
  --[AddressLine1]
  --,[AddressLine2]
  --,[Phone]
  c.[DateFirstPurchase] AS DateFirstPurchase, 
  --,[CommuteDistance]
  g.City as City -- Joined in Customer City from Geopgraphy Table
FROM 
  [dbo].[DimCustomer] AS c 
  LEFT JOIN [dbo].[DimGeography] AS g ON g.[GeographyKey] = c.[GeographyKey] 
ORDER BY 
  CustomerKey ASC
