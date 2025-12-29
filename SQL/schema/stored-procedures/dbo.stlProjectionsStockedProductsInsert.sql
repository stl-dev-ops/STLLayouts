SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlProjectionsStockedProductsInsert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlProjectionsStockedProductsInsert] AS' 
END

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[stlProjectionsStockedProductsInsert]
	-- Add the parameters for the stored procedure here
	@StockedProductName nvarchar(255),
	@CustomerName nvarchar(100),
	@Month nvarchar(2),
	@Year nvarchar(4),
	@ProjectedRollQuantity nvarchar(20),
	@Notes nvarchar(1000)

AS
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	-- SET NOCOUNT ON;
	BEGIN TRANSACTION

		DECLARE @ID int,
				@afg__ref nchar(6),
				@kla__ref nchar(6),
				@PeriodID int,
				@MonthID tinyint,
				@YearID int,
				@PeriodCount int,
				@projRollQuantity int = 0,
				@trimedNotes nvarchar(1000);

		BEGIN TRY 

		SET @trimedNotes = '';
	
		IF @Notes IS NOT NULL
			SET @trimedNotes	= RTRIM(LTRIM(@Notes));

			IF ISNUMERIC(@Month) = 1
				SET @MonthID = CAST(@Month AS tinyint);
			ELSE
				RAISERROR('Not a valid month', 17, 1);

			IF ISNUMERIC(@Year) = 1
				SET @YearID = CAST(@Year AS int);
			ELSE
				RAISERROR('Not a valid year', 17, 1);

			SELECT @PeriodCount = (SELECT COUNT(ID) FROM dbo.stlProjectionPeriods WHERE MonthID  = @Month  AND YearID   = @Year);
			IF @PeriodCount = 0
			BEGIN
				INSERT INTO dbo.stlProjectionPeriods (MonthID, YearID) VALUES (@MonthID, @YearID);
			END

			SELECT @afg__ref = (SELECT DISTINCT afg__ref FROM afgclt__ WHERE zynrefkl = @StockedProductName);
			SELECT @kla__ref = (SELECT kla__ref FROM klabas__ WHERE naam____ = @CustomerName);
			SELECT @PeriodID = (SELECT ID FROM stlProjectionPeriods WHERE MonthID = @MonthID  AND YearID   = @YearID);

			IF ISNUMERIC(@ProjectedRollQuantity) = 1 
			BEGIN
				SET @projRollQuantity = CAST(@ProjectedRollQuantity AS int);
			END

			INSERT INTO [dbo].[stlProjectionsStockedProducts]
				   ([afg__ref],
					[kla__ref],
					[PeriodID],
					[ProjectedRollQuantity])
				VALUES
				   (@afg__ref,
				    @kla__ref,
					@PeriodID,
					@projRollQuantity);
			
			SELECT @ID = SCOPE_IDENTITY();
	
			IF @trimedNotes <> ''
				INSERT INTO dbo.stlProjectionsStockedProductsNotes ( stlProjectionsStockedProductsID, Notes )
				VALUES ( @ID, @trimedNotes );

		END TRY
		BEGIN CATCH  
			SELECT   
				ERROR_NUMBER()    AS ErrorNumber,  
				ERROR_SEVERITY()  AS ErrorSeverity,  
				ERROR_STATE()     AS ErrorState,  
				ERROR_PROCEDURE() AS ErrorProcedure,  
				ERROR_LINE()      AS ErrorLine,  
				ERROR_MESSAGE()   AS ErrorMessage;
			IF @@TRANCOUNT > 0  			
				ROLLBACK TRANSACTION;
		END CATCH;
		
		IF @@TRANCOUNT > 0
			COMMIT TRANSACTION;	
RETURN @@TRANCOUNT --SUCCESS


