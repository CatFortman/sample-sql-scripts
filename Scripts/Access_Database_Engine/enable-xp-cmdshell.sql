-- We need to have this ON because xp_cmdshell is an advanced option.
EXEC sp_configure 'show advanced options', 1
GO
-- To update the currently configured values for sp_configure
RECONFIGURE WITH OVERRIDE
GO
-- Now, enable the feature.
EXEC sp_configure 'xp_cmdshell', 1
GO
-- To update the currently configured values for sp_configure
RECONFIGURE WITH OVERRIDE
GO
