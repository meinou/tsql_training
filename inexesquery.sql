/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 1000 [id]
      ,[name]
      ,[price]
      ,[categoryID]
  FROM [Store].[dbo].[Goods]

  go

  select name, categoryID
  from Goods
  where categoryID in
  (select categoryID
  from Goods
  group by categoryID
  having count(categoryID) > 1)
