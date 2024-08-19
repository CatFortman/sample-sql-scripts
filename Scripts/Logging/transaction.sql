BEGIN TRY
    BEGIN TRANSACTION 
        
		--Add code here
 
ROLLBACK TRANSACTION
END TRY
BEGIN
CATCH
    DECLARE @error INT, 
            @message VARCHAR(4000), 
            @severity INT, 
            @state INT, 
            @procedure NVARCHAR(200), 
            @line INT;

-- Capture error information
SELECT
	@error = ERROR_NUMBER()
   ,@message = ERROR_MESSAGE()
   ,@severity = ERROR_SEVERITY()
   ,@state = ERROR_STATE()
   ,@procedure = ERROR_PROCEDURE()
   ,@line = ERROR_LINE();

    -- Always roll back the transaction first
    IF @@TRANCOUNT > 0
    BEGIN
        ROLLBACK TRANSACTION;
    END

-- Now log the error after the rollback
EXEC Core.LogError @ErrorNumber = @error
				  ,@ErrorMessage = @message
				  ,@ErrorSeverity = @severity
				  ,@ErrorState = @state
				  ,@ErrorProcedure = @procedure
				  ,@ErrorLine = @line;

    -- Re-raise the original error
    RAISERROR('usp_my_procedure_name: %d: %s', 16, 1, @error, @message);
END CATCH;