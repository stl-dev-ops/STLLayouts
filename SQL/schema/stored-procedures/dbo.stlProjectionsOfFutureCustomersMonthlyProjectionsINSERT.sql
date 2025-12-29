SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlProjectionsOfFutureCustomersMonthlyProjectionsINSERT]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlProjectionsOfFutureCustomersMonthlyProjectionsINSERT] AS' 
END



-- =============================================
-- Author:		jeff rupp
-- Create date: 8/8/2024
-- Description:	
-- =============================================
ALTER PROCEDURE [dbo].[stlProjectionsOfFutureCustomersMonthlyProjectionsINSERT]
	-- Add the parameters for the stored procedure here
	@ProjectionsOfFutureCustomersID int OUTPUT,
	@vrt__rpn nvarchar(50),
	@ProjectionDescription nvarchar(255),
	@ProjectionYear varchar(4),
	@Phone nvarchar(255),
	@Contact nvarchar(255),
	@State nvarchar(255),
	@Notes nvarchar(1000),
	@JanForecast varchar(7),
	@FebForecast varchar(7),
	@MarForecast varchar(7),
	@AprForecast varchar(7),
	@MayForecast varchar(7),
	@JunForecast varchar(7),
	@JulForecast varchar(7),
	@AugForecast varchar(7),
	@SepForecast varchar(7),
	@OctForecast varchar(7),
	@NovForecast varchar(7),
	@DecForecast varchar(7)
AS
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	-- SET NOCOUNT ON;

BEGIN TRANSACTION
	DECLARE @_ProjectionYear int,
			@_NewProjectedValue int,
			@_NewPhone nvarchar(255),
			@_NewContact nvarchar(255),
			@_NewState nvarchar(255),
			@_NewNotes nvarchar(1000),
			@vrt__ref nvarchar(6)

	BEGIN TRY

	IF ISNUMERIC(@ProjectionYear) <> 0
	BEGIN
		SET @_ProjectionYear = CAST(@ProjectionYear AS int);
		SET @_NewPhone = TRIM(@Phone);
		SET @_NewContact = TRIM(@Contact);
		SET @_NewState = TRIM(@State);
		SET @_NewNotes = TRIM(@Notes);

		SELECT @vrt__ref = vrt__ref FROM verte___ WHERE vrt__rpn = @vrt__rpn;

		INSERT INTO stlProjectionsOfFutureCustomers
				(ProjectionDescription, vrt__ref) 
		VALUES (@ProjectionDescription, @vrt__ref);

		SELECT @ProjectionsOfFutureCustomersID = SCOPE_IDENTITY();

		IF ((LEN(@_NewPhone) + LEN(@_NewContact) + LEN(@_NewState)) <> 0)
		BEGIN
			INSERT INTO stlProjectionsOfFutureCustomersContactInfo 
				(ProjectionsOfFutureCustomersID, Phone, Contact, [State])
			VALUES (@ProjectionsOfFutureCustomersID, @_NewPhone, @_NewContact, @_NewState)
		END
		
		IF (LEN(@_NewNotes) <> 0)
		BEGIN
			INSERT INTO stlProjectionsOfFutureCustomersNotes (ProjectionsOfFutureCustomersID, ProjectionYear, Notes)
			VALUES (@ProjectionsOfFutureCustomersID, @_ProjectionYear, @_NewNotes)
		END

		EXEC stlProjectionsOfFutureCustomersMonthlyProjectionsUpsert @ProjectionsOfFutureCustomersID,  1, @_ProjectionYear, @JanForecast;
		EXEC stlProjectionsOfFutureCustomersMonthlyProjectionsUpsert @ProjectionsOfFutureCustomersID,  2, @_ProjectionYear, @FebForecast;
		EXEC stlProjectionsOfFutureCustomersMonthlyProjectionsUpsert @ProjectionsOfFutureCustomersID,  3, @_ProjectionYear, @MarForecast;
		EXEC stlProjectionsOfFutureCustomersMonthlyProjectionsUpsert @ProjectionsOfFutureCustomersID,  4, @_ProjectionYear, @AprForecast;
		EXEC stlProjectionsOfFutureCustomersMonthlyProjectionsUpsert @ProjectionsOfFutureCustomersID,  5, @_ProjectionYear, @MayForecast;
		EXEC stlProjectionsOfFutureCustomersMonthlyProjectionsUpsert @ProjectionsOfFutureCustomersID,  6, @_ProjectionYear, @JunForecast;
		EXEC stlProjectionsOfFutureCustomersMonthlyProjectionsUpsert @ProjectionsOfFutureCustomersID,  7, @_ProjectionYear, @JulForecast;
		EXEC stlProjectionsOfFutureCustomersMonthlyProjectionsUpsert @ProjectionsOfFutureCustomersID,  8, @_ProjectionYear, @AugForecast;
		EXEC stlProjectionsOfFutureCustomersMonthlyProjectionsUpsert @ProjectionsOfFutureCustomersID,  9, @_ProjectionYear, @SepForecast;
		EXEC stlProjectionsOfFutureCustomersMonthlyProjectionsUpsert @ProjectionsOfFutureCustomersID, 10, @_ProjectionYear, @OctForecast;
		EXEC stlProjectionsOfFutureCustomersMonthlyProjectionsUpsert @ProjectionsOfFutureCustomersID, 11, @_ProjectionYear, @NovForecast;
		EXEC stlProjectionsOfFutureCustomersMonthlyProjectionsUpsert @ProjectionsOfFutureCustomersID, 12, @_ProjectionYear, @DecForecast;

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

