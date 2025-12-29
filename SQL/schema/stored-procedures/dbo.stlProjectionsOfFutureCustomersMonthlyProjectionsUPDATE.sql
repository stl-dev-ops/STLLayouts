SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlProjectionsOfFutureCustomersMonthlyProjectionsUPDATE]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlProjectionsOfFutureCustomersMonthlyProjectionsUPDATE] AS' 
END



-- =============================================
-- Author:		jeff rupp
-- Create date: 8/8/2024
-- Description:	
-- =============================================
ALTER PROCEDURE [dbo].[stlProjectionsOfFutureCustomersMonthlyProjectionsUPDATE]
	-- Add the parameters for the stored procedure here
	@ProjectionsOfFutureCustomersID int,
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
			@_NewDescription nvarchar(255),
			@_NewPhone nvarchar(255),
			@_NewContact nvarchar(255),
			@_NewState nvarchar(255), 
			@_NewNotes nvarchar(1000),
			@_OldDescription nvarchar(255),
			@_OldPhone nvarchar(255),
			@_OldContact nvarchar(255),
			@_OldState nvarchar(255), 
			@_OldNotes nvarchar(1000)

	BEGIN TRY

	IF ISNUMERIC(@ProjectionYear) <> 0
	BEGIN
		SET @_ProjectionYear = CAST(@ProjectionYear AS int);
		SET @_NewDescription = TRIM(@ProjectionDescription);
		SET @_NewPhone = TRIM(@Phone);
		SET @_NewContact = TRIM(@Contact);
		SET @_NewState = TRIM(@State);
		SET @_NewNotes = TRIM(@Notes);

		SELECT @_OldDescription = ProjectionDescription
		FROM stlProjectionsOfFutureCustomers
		WHERE ProjectionsOfFutureCustomersID = @ProjectionsOfFutureCustomersID AND Deleted = 0

		IF (@_OldDescription <> @_NewDescription)
		BEGIN
			UPDATE stlProjectionsOfFutureCustomers
			SET ProjectionDescription = @_NewDescription, Updated = GETDATE(), UpdatedBy = SUSER_SNAME()
			WHERE ProjectionsOfFutureCustomersID = @ProjectionsOfFutureCustomersID;
		END

		SELECT @_OldPhone = Phone, @_OldContact = Contact, @_OldState = [State]
		FROM stlProjectionsOfFutureCustomersContactInfo 
		WHERE ProjectionsOfFutureCustomersID = @ProjectionsOfFutureCustomersID AND Deleted = 0;

		SELECT @_OldNotes = Notes
		FROM stlProjectionsOfFutureCustomersNotes
		WHERE ProjectionsOfFutureCustomersID = @ProjectionsOfFutureCustomersID AND Deleted = 0;

		SET @_OldPhone   = ISNULL(@_OldPhone, '');
		SET @_OldContact = ISNULL(@_OldContact, '');
		SET @_OldState   = ISNULL(@_OldState, '');
		SET @_OldNotes   = ISNULL(@_OldNotes, '');

		IF (@_OldPhone <> @_NewPhone OR @_OldContact <> @_NewContact OR @_OldState <> @_NewState) 
		BEGIN
			UPDATE stlProjectionsOfFutureCustomersContactInfo
			SET Deleted = 1
			WHERE ProjectionsOfFutureCustomersID = @ProjectionsOfFutureCustomersID;
			IF ((LEN(@_NewPhone) + LEN(@_NewContact) + LEN(@_NewState)) <> 0)
			BEGIN
				INSERT INTO stlProjectionsOfFutureCustomersContactInfo (ProjectionsOfFutureCustomersID, Phone, Contact, [State])
				VALUES (@ProjectionsOfFutureCustomersID, @_NewPhone, @_NewContact, @_NewState);
			END
		END

		IF (@_OldNotes <> @_NewNotes)
		BEGIN
			UPDATE stlProjectionsOfFutureCustomersNotes 
			SET Deleted = 1
			WHERE ProjectionsOfFutureCustomersID = @ProjectionsOfFutureCustomersID;
			IF (LEN(@_NewNotes) <> 0)
			BEGIN
				INSERT INTO stlProjectionsOfFutureCustomersNotes (ProjectionsOfFutureCustomersID, ProjectionYear, Notes)
				VALUES (@ProjectionsOfFutureCustomersID, @_ProjectionYear, @_NewNotes)
			END
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

