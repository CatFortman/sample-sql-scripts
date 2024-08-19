BEGIN TRY
    BEGIN TRANSACTION 
        
		--Add code here
 
PRINT 'Rolling back transaction'
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

-- Check the transaction state
    IF XACT_STATE() = -1
    BEGIN
        -- The transaction is in an uncommittable state and must be rolled back immediately
        ROLLBACK TRANSACTION;

-- You can now log the error because the transaction has been rolled back
EXEC Core.LogError @ErrorNumber = @error
				  ,@ErrorMessage = @message
				  ,@ErrorSeverity = @severity
				  ,@ErrorState = @state
				  ,@ErrorProcedure = @procedure
				  ,@ErrorLine = @line;
END
ELSE
IF XACT_STATE() = 1
BEGIN
-- The transaction is committable but has an error, so it needs to be rolled back
ROLLBACK TRANSACTION;

-- Log the error after rolling back
EXEC Core.LogError @ErrorNumber = @error
				  ,@ErrorMessage = @message
				  ,@ErrorSeverity = @severity
				  ,@ErrorState = @state
				  ,@ErrorProcedure = @procedure
				  ,@ErrorLine = @line;
END

IF @@TRANCOUNT > 0
BEGIN
ROLLBACK
END
END CATCH