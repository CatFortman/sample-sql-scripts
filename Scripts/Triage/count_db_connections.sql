SELECT 
    DB_NAME(dbid) as DBName, 
    COUNT(dbid) as NoOfConnections,
    loginame as LoginName
FROM
    sys.sysprocesses
WHERE 
    dbid > 0
GROUP BY 
    dbid, loginame
