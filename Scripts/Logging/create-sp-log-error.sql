CREATE OR ALTER PROCEDURE Core.sp_LogError
(
    @ErrorNumber INT,
    @ErrorMessage VARCHAR(4000),
    @ErrorSeverity INT,
    @ErrorState INT,
    @ErrorProcedure NVARCHAR(200),
    @ErrorLine INT
)
AS
BEGIN
INSERT INTO Core.Error_Log (ErrorNumber,
ErrorMessage,
ErrorSeverity,
ErrorState,
ErrorProcedure,
ErrorLine)
	VALUES (@ErrorNumber, @ErrorMessage, @ErrorSeverity, @ErrorState, @ErrorProcedure, @ErrorLine);
END;
