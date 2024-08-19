CREATE TABLE Core.Error_Log
(
    Error_Log_Id INT IDENTITY(1,1) PRIMARY KEY,
    [Error_Number] INT,
    [Error_Message] VARCHAR(4000),
    [Error_Severity] INT,
    [Error_State] INT,
    [Error_Procedure] NVARCHAR(200),
    [Error_Line] INT,
    [Error_Date_Time] DATETIME DEFAULT GETDATE()
);
