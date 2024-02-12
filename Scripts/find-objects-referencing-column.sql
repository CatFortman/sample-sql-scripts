select 
obj.type REFERENCING_OBJECT_TYPE
 ,SCHEMA_NAME(obj.schema_id) REFERENCING_OBJECT_SCHEMA
 ,obj.name                  REFERENCING_OBJECT_NAME
from sysdepends x
INNER JOIN sys.objects obj ON x.id  = obj.object_id
where depid = object_id('Config.Language')
and col_name(depid, depnumber) = 'LanguageId'
ORDER BY obj.type ,SCHEMA_NAME(obj.schema_id) ,obj.name