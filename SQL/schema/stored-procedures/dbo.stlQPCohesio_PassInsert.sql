SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlQPCohesio_PassInsert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlQPCohesio_PassInsert] AS' 
END

-- =============================================
-- Author:		jeff rupp
-- Create date: 04/20/2023
-- Description:	Cohesio Quick Price Pass Insert
-- =============================================
ALTER PROCEDURE [dbo].[stlQPCohesio_PassInsert] 
	-- Add the parameters for the stored procedure here
	@QuoteID int,
    @prs__ref nvarchar(4),
    @PassNumber int,
    @JobSetupFeet float,
    @WasteFeet float,
    @WasteFeetInterval float,
    @RollChangeWasteFeet float,
    @RollChangeWasteFeetInterval float,
    @SetupHours float,
    @RunSpeedFPM float,
    @TearDownHours float,
    @ShiftStartupFeet float,
    @ShiftStartupHours float,
    @ShiftStartupHoursFeetInterval float
AS
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	-- SET NOCOUNT ON;

BEGIN TRANSACTION

	BEGIN TRY

	INSERT INTO stlQPCohesio_Passes (QuoteID, prs__ref, PassNumber, JobSetupFeet, WasteFeet, WasteFeetInterval, RollChangeWasteFeet, RollChangeWasteFeetInterval, 
			SetupHours, RunSpeedFPM, TearDownHours, ShiftStartupFeet, ShiftStartupHours, ShiftStartupHoursFeetInterval)
	VALUES (@QuoteID, @prs__ref, @PassNumber, @JobSetupFeet, @WasteFeet, @WasteFeetInterval, @RollChangeWasteFeet, @RollChangeWasteFeetInterval, 
			@SetupHours, @RunSpeedFPM, @TearDownHours, @ShiftStartupFeet, @ShiftStartupHours, @ShiftStartupHoursFeetInterval);


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

