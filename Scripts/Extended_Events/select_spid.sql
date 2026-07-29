SELECT  session_id
      , host_name
      , program_name
	  
      , login_name
FROM    sys.dm_exec_sessions
WHERE   is_user_process = 1 AND HOST_NAME = 'ENG-VDI-45'