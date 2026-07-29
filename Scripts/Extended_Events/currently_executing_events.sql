SELECT
    r.session_id,
    s.program_name,
    s.host_name,
    r.status,
    r.command,
    DB_NAME(r.database_id) AS database_name,
    t.text
FROM sys.dm_exec_requests r
JOIN sys.dm_exec_sessions s
    ON r.session_id = s.session_id
CROSS APPLY sys.dm_exec_sql_text(r.sql_handle) t;