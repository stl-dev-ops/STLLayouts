SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlQPCohesio_InvoiceLineItemInsert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlQPCohesio_InvoiceLineItemInsert] AS' 
END

-- =============================================
-- Author:		jeff rupp
-- Create date: 07/19/2024
-- Description:	Cohesio Quick Price Invoice Line Item Insert
-- =============================================
ALTER PROCEDURE [dbo].[stlQPCohesio_InvoiceLineItemInsert] 
	-- Add the parameters for the stored procedure here
	@QuoteID int,
	@fpl__ref nvarchar(6), 
	@fpl__rpn nvarchar(10), 
	@fkttxt11 nvarchar(50), 
	@Comment nvarchar(100),
	@Quantity int, 
	@Price float
AS
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	-- SET NOCOUNT ON;

BEGIN TRANSACTION

	BEGIN TRY

	INSERT INTO stlQPCohesio_InvoiceLineItems (QuoteID, fpl__ref, fpl__rpn, fkttxt11, Comment, Quantity, Price)
	VALUES (@QuoteID, @fpl__ref, @fpl__rpn, @fkttxt11, @Comment, @Quantity, @Price);


END TRY
		BEGIN CATCH
			SELECT   
				ERROR_NUMBER() AS ErrorNumber  
				,ERROR_SEVERITY() AS ErrorSeverity  
				,ERROR_STATE() AS ErrorState  
				,ERROR_PROCEDURE() AS ErrorProcedure  
				,ERROR_LINE() AS ErrorLine  
				,ERROR_MESSAGE() AS ErrorMessage;
			IF @@TRANCOUNT > 0  			
				ROLLBACK TRANSACTION;
		END CATCH;
		
		IF @@TRANCOUNT > 0
			COMMIT TRANSACTION;	
RETURN @@TRANCOUNT --SUCCESS

