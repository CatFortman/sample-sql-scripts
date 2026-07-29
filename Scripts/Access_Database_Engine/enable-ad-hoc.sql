EXEC sp_configure 'show advanced options', 1
RECONFIGURE WITH OVERRIDE
GO
EXEC sp_configure 'ad hoc distributed queries', 1
RECONFIGURE WITH OVERRIDE
GO