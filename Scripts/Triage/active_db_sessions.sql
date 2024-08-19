select c.session_id, c.net_transport, c.protocol_type, c.client_net_address, s.host_name, s.program_name, s.login_name, s.status, s.last_request_start_time
from sys.dm_exec_connections c, sys.dm_exec_sessions s
where c.session_id = s.session_id
and c.net_transport = 'TCP'