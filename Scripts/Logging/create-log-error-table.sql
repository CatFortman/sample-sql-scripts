CREATE TABLE Core.ErrorLog
(
    ErrorLogID INT IDENTITY(1,1) PRIMARY KEY,
    ErrorNumber INT,
    ErrorMessage VARCHAR(4000),
    ErrorSeverity INT,
    ErrorState INT,
    ErrorProcedure NVARCHAR(200),
    ErrorLine INT,
    ErrorDateTime DATETIME DEFAULT GETDATE()
);