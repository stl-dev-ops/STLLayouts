SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlUpdateCustomersTestStatusOfSampleProduct]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlUpdateCustomersTestStatusOfSampleProduct] AS' 
END
-- =============================================
-- Author:		<jeff> 
-- Create date: <Create Date,,>
-- Description:	bstext__.tekst_14 tracks customer's approval of sample shipments
-- @Customer_Approval = 'Not Tested', 'Approved', 'Failed', 'Open'
-- =============================================
ALTER PROCEDURE [dbo].[stlUpdateCustomersTestStatusOfSampleProduct]
	-- Add the parameters for the stored procedure here
	@lyn__ref nvarchar(10), 
	@Customer_Approval nvarchar(50),
	@Customer_Approval_Status_Changed_Date nvarchar(10) -- 11/23/2020 Alec & Reena changed this from Approval date ONLY to date status changed.
AS
	--SET NOCOUNT ON
	BEGIN TRANSACTION
		DECLARE @bstext__Count int,
				@ApprovalStatusID tinyint
		
		BEGIN TRY

			SELECT @bstext__Count = (select COUNT(lyn__ref) from stlSamplesSent where lyn__ref = @lyn__ref);

			SELECT @ApprovalStatusID = (select ID FROM stlSamplesApprovalStatusTypes WHERE ApprovalStatus = @Customer_Approval)
			
			IF @bstext__Count = 0
			BEGIN
				--Have to create the bstext__ record
				INSERT INTO stlSamplesSent (lyn__ref, ApprovalStatusID, ApprovalStatusChangedDate) 
				VALUES (@lyn__ref, @ApprovalStatusID, @Customer_Approval_Status_Changed_Date);
			END
			ELSE
			BEGIN
				UPDATE stlSamplesSent 
				SET ApprovalStatusID = @ApprovalStatusID,
				    ApprovalStatusChangedDate = @Customer_Approval_Status_Changed_Date 
				WHERE lyn__ref = @lyn__ref;
			END
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



