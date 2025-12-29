SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlUpdateApprovalFollowUpOfSampleProduct]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlUpdateApprovalFollowUpOfSampleProduct] AS' 
END

-- =============================================
-- Author:		<jeff> 
-- Create date: <Create Date,,>
-- Description:	bstext__.tekst_13 tracks who will follow up with the customer of sample shipments
-- 
-- =============================================
ALTER PROCEDURE [dbo].[stlUpdateApprovalFollowUpOfSampleProduct]
	-- Add the parameters for the stored procedure here
	@lyn__ref nvarchar(10), 
	@Approval_FollowUp nvarchar(50)
AS
	--SET NOCOUNT ON
	BEGIN TRANSACTION
		DECLARE @bstext__Count int,
		        @Approval_FollowUpID nvarchar(6)
		
		BEGIN TRY

			SELECT @bstext__Count = (select COUNT(lyn__ref) from stlSamplesSent where lyn__ref = @lyn__ref);
			
			SELECT @Approval_FollowUpID = (SELECT usernbr_ FROM paswrd__ WHERE username = @Approval_FollowUp);

			IF @bstext__Count = 0
			BEGIN
				--Have to create the bstext__ record
				INSERT INTO stlSamplesSent (lyn__ref, SalesRepID) 
				VALUES (@lyn__ref, @Approval_FollowUpID);
			END
			ELSE
			BEGIN
				UPDATE stlSamplesSent 
				SET SalesRepID = @Approval_FollowUpID 
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



