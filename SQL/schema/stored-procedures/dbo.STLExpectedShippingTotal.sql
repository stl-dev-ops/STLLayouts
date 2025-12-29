SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STLExpectedShippingTotal]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[STLExpectedShippingTotal] AS' 
END
-- =============================================
-- Author:		<Jon Dragt>
-- Create date: <7/14/19>
-- Description:	<Accepts the packing list ref # (the barcode on the packing) AKA bstlyn__.lbn__ref and inserts / updates the bstext__.tekst_02 with the tracking number>
-- =============================================
ALTER PROCEDURE [dbo].[STLExpectedShippingTotal]
    @PackingListRef nvarchar(6),
    @ExpectedTotal float
AS
	--SET NOCOUNT ON
	BEGIN TRANSACTION
		DECLARE @bstext__Count int
		DECLARE @lyn__ref nvarchar(10)
		
		BEGIN TRY
			-- - algpar__.sscc_rol (1) if it is a roll / algpar__.sscc_box (2) if it is a box / algpar__.sscc_pal (4) if it is a pallet
			SELECT @lyn__ref = (select lyn__ref from bstlyn__ where lbn__ref = @PackingListRef)

			update trnlyn__ set vrztotvm = @ExpectedTotal, vrztotbm = @ExpectedTotal from trnlyn__ where lyn__ref = @lyn__ref
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


