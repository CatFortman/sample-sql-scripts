SELECT t.name,
       c.name,
       s.name
FROM sys.tables t
    INNER JOIN sys.columns c
        ON c.object_id = t.object_id
    INNER JOIN sys.schemas s
        ON s.schema_id = t.schema_id
ORDER BY t.name,
         c.name;