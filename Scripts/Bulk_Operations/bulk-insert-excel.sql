USE Database;
GO

BULK INSERT  testSchema.tableName
  FROM 'C:\temp\2023-01-12_testexcel.csv'
    WITH (
	 firstrow = 2,
      FIELDTERMINATOR = ',',
      ROWTERMINATOR = '\n'
);
GO