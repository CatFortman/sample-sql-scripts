SELECT DISTINCT
       'DROP STATISTICS [' + SCHEMA_NAME(ob.schema_id) + '].[' + OBJECT_NAME(s.object_id) + '].[' + s.name + ']' DropStatisticsStatement
FROM sys.stats s
    INNER JOIN sys.objects ob
        ON ob.object_id = s.object_id
WHERE SCHEMA_NAME(ob.schema_id) <> 'sys'
      AND auto_created = 0
      AND user_created = 1;