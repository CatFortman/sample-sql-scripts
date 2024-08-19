SELECT
  OBJECT_NAME(parent_object_id) AS 'Table',
  name AS 'Constraint',
  is_disabled, 
  is_not_trusted
FROM sys.foreign_keys
UNION
SELECT 
  OBJECT_NAME(parent_object_id),
  name,
  is_disabled, 
  is_not_trusted
FROM sys.check_constraints;

ALTER TABLE ConstraintTest 
NOCHECK CONSTRAINT ALL;

ALTER TABLE ConstraintTest 
WITH CHECK CHECK CONSTRAINT ALL;