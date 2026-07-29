DECLARE @List TABLE (SessionId INT NOT NULL);

INSERT INTO @List (SessionId)
VALUES (126)
     , (130);

SELECT  r.session_id
      , r.status
      , r.command
      , r.start_time
      , t.text
FROM    sys.dm_exec_requests r
    CROSS APPLY sys.dm_exec_sql_text(r.sql_handle) t
WHERE   EXISTS (SELECT  1 FROM  @List WHERE session_id = SessionId);