DECLARE @List TABLE (SessionId INT NOT NULL);

INSERT INTO @List (SessionId)
VALUES (126)
     , (130);

SELECT  session_id
      , status
      , last_request_start_time
      , last_request_end_time
FROM    sys.dm_exec_sessions
WHERE   EXISTS (SELECT  1 FROM  @List WHERE session_id = SessionId);