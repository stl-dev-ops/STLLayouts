SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlQP_OfflineFinishingInsert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlQP_OfflineFinishingInsert] AS' 
END
-- =============================================
-- Author:		jeff rupp
-- Create date: 07/26/2021
-- Description:	Quick Price Offline Finishing Insert
-- =============================================
ALTER PROCEDURE [dbo].[stlQP_OfflineFinishingInsert] 
	-- Add the parameters for the stored procedure here
	@QuoteID int,
	@etap_ref nvarchar(7), 
	@omschr__ nvarchar(100), 
	@Comment nvarchar(100),
	@MR_Minutes int, 
	@Extra_tools_minutes int, 
	@MR_waste_feet int, 
	@Production_waste_percent float, 
	@Wage_cost float, 
	@Machine_cost float, 
	@Roll_change_waste int, 
	@Roll_change_MR_minutes int
AS
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	-- SET NOCOUNT ON;

BEGIN TRANSACTION

	BEGIN TRY

	INSERT INTO stlQP_OfflineFinishings (QuoteID, etap_ref, omschr__, Comment, MR_Minutes, Extra_tools_minutes, MR_waste_feet, Production_waste_percent, Wage_cost, Machine_cost, Roll_change_waste, Roll_change_MR_minutes)
	VALUES (@QuoteID, @etap_ref, @omschr__, @Comment, @MR_Minutes, @Extra_tools_minutes, @MR_waste_feet, @Production_waste_percent, @Wage_cost, @Machine_cost, @Roll_change_waste, @Roll_change_MR_minutes);


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
