CREATE OR ALTER PROCEDURE Core.sp_Log_Error
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
INSERT INTO Core.Error_Log ([Error_Number],
[Error_Message],
[Error_Severity],
[Error_State],
[Error_Procedure],
[Error_Line])
	VALUES (@ErrorNumber, @ErrorMessage, @ErrorSeverity, @ErrorState, @ErrorProcedure, @ErrorLine);
END;
