SELECT s.name, c.name, CONCAT('EXEC sp_rename ''[schemaname].[',s2.name,'].[',s.name,'].[',c.name,']'', ''',REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(c.name,'_',''),'LastModified','ModifiedDate'),'ID','Id'),'CreateDate','CreatedDate'),'LastSavedDate','ModifiedDate'),''', ''COLUMN'';')
FROM sys.tables s
INNER JOIN sys.columns c
ON c.object_id = s.object_id
INNER JOIN sys.schemas s2
ON s2.schema_id = s.schema_id
ORDER BY s.name, c.name