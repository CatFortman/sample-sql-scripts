DECLARE db_cursor CURSOR FOR
SELECT s.name,
       t.name
FROM sys.tables t
    INNER JOIN sys.schemas s
        ON t.schema_id = s.schema_id;
DECLARE @schemaName VARCHAR(256);
DECLARE @tableName VARCHAR(256);
DECLARE @sql VARCHAR(8000);
OPEN db_cursor;
FETCH NEXT FROM db_cursor
INTO @schemaName,
     @tableName;
WHILE @@FETCH_STATUS = 0
BEGIN
    IF -- condition
    BEGIN
        SET @sql = 'dynamic sql';
        EXEC (@sql);
    END;

    FETCH NEXT FROM db_cursor
    INTO @schemaName,
         @tableName;
END;
CLOSE db_cursor;
DEALLOCATE db_cursor;