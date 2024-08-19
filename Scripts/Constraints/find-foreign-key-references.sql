SELECT obj.name AS FK_NAME,
sch.name AS [schema_name],
tab1.name AS [table],
col1.name AS [column],
sch2.name AS [referenced_schema],
tab2.name AS [referenced_table],
col2.name AS [referenced_column]
FROM sys.foreign_key_columns fkc
INNER JOIN sys.objects obj
ON obj.object_id = fkc.constraint_object_id
INNER JOIN sys.tables tab1
ON tab1.object_id = fkc.parent_object_id
INNER JOIN sys.schemas sch
ON tab1.schema_id = sch.schema_id
INNER JOIN sys.columns col1
ON col1.column_id = parent_column_id AND col1.object_id = tab1.object_id
INNER JOIN sys.tables tab2
ON tab2.object_id = fkc.referenced_object_id
INNER JOIN sys.schemas sch2
ON tab2.schema_id = sch2.schema_id
INNER JOIN sys.columns col2
ON col2.column_id = referenced_column_id AND col2.object_id = tab2.object_id
WHERE tab2.name IN( 'Language')
AND sch2.name IN ('Core')
AND col2.name IN ('LanguageId')