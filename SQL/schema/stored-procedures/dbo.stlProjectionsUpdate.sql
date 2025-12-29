SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlProjectionsUpdate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlProjectionsUpdate] AS' 
END
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[stlProjectionsUpdate] 
	-- Add the parameters for the stored procedure here
	@ID int,
	@ProductGroup nvarchar(40),
	@Brand nvarchar(30),
	@Month nvarchar(2),
	@Year nvarchar(4),
	@Type nvarchar(10),
	@ProjectedLabelQuantity nvarchar(20),
	@ProjectedLabelValue nvarchar(20)
AS

	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
	BEGIN TRANSACTION

		DECLARE @GroupID int,
				@MonthID tinyint,
				@YearID int,
				@PeriodID int,
				@TypeID tinyint,
				@prkl_ref nvarchar(12),
				@prfm_refCount int,
				@prfm_ref nvarchar(10) = '',
				@PeriodCount int,
				@GroupCount int,
				@projLabelQuantity int = 0,
				@projLabelValue decimal(19,2) = 0;

		BEGIN TRY
			IF ISNUMERIC(@Month) = 1
				SET @MonthID = CAST(@Month AS tinyint);
			ELSE
				RAISERROR('Not a valid month', 17, 1);

			IF ISNUMERIC(@Year) = 1
				SET @YearID = CAST(@Year AS int);
			ELSE
				RAISERROR('Not a valid year', 17, 1);

			SELECT @prkl_ref = (SELECT prkl_ref FROM prodkl__ WHERE omschr__ = @ProductGroup);
			SELECT @prfm_refCount = (SELECT COUNT(prfm_ref) FROM prodfm__ WHERE prfm_rpn = @Brand);
			IF @prfm_refCount <> 0
			BEGIN
				SELECT @prfm_ref = (SELECT prfm_ref FROM prodfm__ WHERE prfm_rpn = @Brand);
			END

			SELECT @GroupCount  = (SELECT COUNT(ID) FROM dbo.stlProjectionGroups  WHERE prkl_ref = @prkl_ref AND prfm_ref = @prfm_ref);
			SELECT @PeriodCount = (SELECT COUNT(ID) FROM dbo.stlProjectionPeriods WHERE MonthID  = @MonthID  AND YearID   = @YearID);

			IF @GroupCount = 0
			BEGIN
				INSERT INTO dbo.stlProjectionGroups (prkl_ref, prfm_ref) VALUES (@prkl_ref, @prfm_ref);
			END
			IF @PeriodCount = 0
			BEGIN
				INSERT INTO dbo.stlProjectionPeriods (MonthID, YearID) VALUES (@MonthID, @YearID);
			END

			SELECT @PeriodID = (SELECT ID FROM stlProjectionPeriods WHERE MonthID        = @MonthID  AND YearID   = @YearID);
			SELECT @GroupID  = (SELECT ID FROM stlProjectionGroups  WHERE prkl_ref       = @prkl_ref AND prfm_ref = @prfm_ref);
			SELECT @TypeID   = (SELECT ID FROM stlProjectionTypes   WHERE ProjectionType = @Type);

			IF ISNUMERIC(@ProjectedLabelQuantity) = 1 
			BEGIN
				SET @projLabelQuantity = CAST(@ProjectedLabelQuantity AS int);
			END
			IF ISNUMERIC(@ProjectedLabelValue) = 1 
			BEGIN
				SET @projLabelValue = CAST(@ProjectedLabelValue AS decimal(19,2));
			END

		UPDATE [dbo].[stlProjections]
			SET [GroupID]                 = @GroupID,
				[PeriodID]                = @PeriodID,
				[TypeID]                  = @TypeID,
				[ProjectedLabelQuantity]  = @projLabelQuantity,
				[ProjectedLabelValue]     = @projLabelValue
			WHERE ID = @ID;

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

