BEGIN TRY
    BEGIN TRANSACTION 
        
		--Add code here
 
    ROLLBACK TRANSACTION
END TRY
BEGIN CATCH
        declare @error int, @message varchar(4000), @xstate int;
        select @error = ERROR_NUMBER(), @message = ERROR_MESSAGE(), @xstate = XACT_STATE();
        raiserror ('usp_my_procedure_name: %d: %s', 16, 1, @error, @message);
    
    IF @@TRANCOUNT > 0
        ROLLBACK
END CATCH
