SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlProjectionsByCustomerByYearWithSalesRepScratchPadUpsert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlProjectionsByCustomerByYearWithSalesRepScratchPadUpsert] AS' 
END




-- =============================================
-- Author:		jeff rupp
-- Create date: 12/6/2023
-- Description:	
-- =============================================
ALTER PROCEDURE [dbo].[stlProjectionsByCustomerByYearWithSalesRepScratchPadUpsert]
	-- Add the parameters for the stored procedure here
	@kla__ref nvarchar(6),
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
	DECLARE @ProjectionsByCustomerByYearID int,
			@_ProjectionYear int,
			@_NewNotes nvarchar(1000),
			@_NewPhone nvarchar(255),
			@_NewContact nvarchar(255),
			@_NewState nvarchar(255),
			@_OldNotes nvarchar(1000),
			@_OldPhone nvarchar(255),
			@_OldContact nvarchar(255),
			@_OldState nvarchar(255)

	BEGIN TRY

	IF ISNUMERIC(@ProjectionYear) <> 0
	BEGIN
		SET @_ProjectionYear = CAST(@ProjectionYear AS int);
		SET @_NewNotes = TRIM(@Notes);
		SET @_NewPhone = TRIM(@Phone);
		SET @_NewContact = TRIM(@Contact);
		SET @_NewState = TRIM(@State);

		SELECT @ProjectionsByCustomerByYearID = 
		(
			SELECT ID 
			FROM stlProjectionsByCustomerByYear
			WHERE kla__ref = @kla__ref AND ProjectionYear = @ProjectionYear 
		);

		IF (@ProjectionsByCustomerByYearID IS NULL)
		BEGIN
			INSERT INTO stlProjectionsByCustomerByYear 
					(ProjectionYear, kla__ref, ProjectedValue)
			VALUES (@_ProjectionYear, @kla__ref, 0);

			SELECT @ProjectionsByCustomerByYearID = SCOPE_IDENTITY();
		END

		SELECT @_OldNotes = Notes, @_OldPhone = Phone, @_OldContact = Contact, @_OldState = [State]
		FROM stlProjectionsByCustomerByYearNotes 
		WHERE Deleted = 0 AND ProjectionsByCustomerByYearID = @ProjectionsByCustomerByYearID;

		SET @_OldNotes   = ISNULL(@_OldNotes, '');
		SET @_OldPhone   = ISNULL(@_OldPhone, '');
		SET @_OldContact = ISNULL(@_OldContact, '');
		SET @_OldState   = ISNULL(@_OldState, '');

		IF (@_OldNotes <> @_NewNotes OR @_OldPhone <> @_NewPhone OR @_OldContact <> @_NewContact OR @_OldState <> @_NewState) 
		BEGIN
			UPDATE stlProjectionsByCustomerByYearNotes
			SET Deleted = 1
			WHERE ProjectionsByCustomerByYearID = @ProjectionsByCustomerByYearID;

			IF ((LEN(@_NewNotes) + LEN(@_NewPhone) + LEN(@_NewContact) + LEN(@_NewState)) <> 0)
			BEGIN
				INSERT INTO stlProjectionsByCustomerByYearNotes (ProjectionsByCustomerByYearID, Notes, Phone, Contact, [State])
				VALUES (@ProjectionsByCustomerByYearID, @_NewNotes, @_NewPhone, @_NewContact, @_NewState);
			END
		END

		EXEC stlProjectionsByCustomerByYearScratchPadForSalesRepsNotRealDataUpsert @ProjectionsByCustomerByYearID,  1, @JanForecast, 0;
		EXEC stlProjectionsByCustomerByYearScratchPadForSalesRepsNotRealDataUpsert @ProjectionsByCustomerByYearID,  2, @FebForecast, 0;
		EXEC stlProjectionsByCustomerByYearScratchPadForSalesRepsNotRealDataUpsert @ProjectionsByCustomerByYearID,  3, @MarForecast, 0;
		EXEC stlProjectionsByCustomerByYearScratchPadForSalesRepsNotRealDataUpsert @ProjectionsByCustomerByYearID,  4, @AprForecast, 0;
		EXEC stlProjectionsByCustomerByYearScratchPadForSalesRepsNotRealDataUpsert @ProjectionsByCustomerByYearID,  5, @MayForecast, 0;
		EXEC stlProjectionsByCustomerByYearScratchPadForSalesRepsNotRealDataUpsert @ProjectionsByCustomerByYearID,  6, @JunForecast, 0;
		EXEC stlProjectionsByCustomerByYearScratchPadForSalesRepsNotRealDataUpsert @ProjectionsByCustomerByYearID,  7, @JulForecast, 0;
		EXEC stlProjectionsByCustomerByYearScratchPadForSalesRepsNotRealDataUpsert @ProjectionsByCustomerByYearID,  8, @AugForecast, 0;
		EXEC stlProjectionsByCustomerByYearScratchPadForSalesRepsNotRealDataUpsert @ProjectionsByCustomerByYearID,  9, @SepForecast, 0;
		EXEC stlProjectionsByCustomerByYearScratchPadForSalesRepsNotRealDataUpsert @ProjectionsByCustomerByYearID, 10, @OctForecast, 0;
		EXEC stlProjectionsByCustomerByYearScratchPadForSalesRepsNotRealDataUpsert @ProjectionsByCustomerByYearID, 11, @NovForecast, 0;
		EXEC stlProjectionsByCustomerByYearScratchPadForSalesRepsNotRealDataUpsert @ProjectionsByCustomerByYearID, 12, @DecForecast, 0;

		--EXEC stlProjectionsByCustomerByYearScratchPadForSalesRepsNotRealDataUpsert @ProjectionsByCustomerByYearID,  1, @JanForecast, @JanActual;
		--EXEC stlProjectionsByCustomerByYearScratchPadForSalesRepsNotRealDataUpsert @ProjectionsByCustomerByYearID,  2, @FebForecast, @FebActual;
		--EXEC stlProjectionsByCustomerByYearScratchPadForSalesRepsNotRealDataUpsert @ProjectionsByCustomerByYearID,  3, @MarForecast, @MarActual;
		--EXEC stlProjectionsByCustomerByYearScratchPadForSalesRepsNotRealDataUpsert @ProjectionsByCustomerByYearID,  4, @AprForecast, @AprActual;
		--EXEC stlProjectionsByCustomerByYearScratchPadForSalesRepsNotRealDataUpsert @ProjectionsByCustomerByYearID,  5, @MayForecast, @MayActual;
		--EXEC stlProjectionsByCustomerByYearScratchPadForSalesRepsNotRealDataUpsert @ProjectionsByCustomerByYearID,  6, @JunForecast, @JunActual;
		--EXEC stlProjectionsByCustomerByYearScratchPadForSalesRepsNotRealDataUpsert @ProjectionsByCustomerByYearID,  7, @JulForecast, @JulActual;
		--EXEC stlProjectionsByCustomerByYearScratchPadForSalesRepsNotRealDataUpsert @ProjectionsByCustomerByYearID,  8, @AugForecast, @AugActual;
		--EXEC stlProjectionsByCustomerByYearScratchPadForSalesRepsNotRealDataUpsert @ProjectionsByCustomerByYearID,  9, @SepForecast, @SepActual;
		--EXEC stlProjectionsByCustomerByYearScratchPadForSalesRepsNotRealDataUpsert @ProjectionsByCustomerByYearID, 10, @OctForecast, @OctActual;
		--EXEC stlProjectionsByCustomerByYearScratchPadForSalesRepsNotRealDataUpsert @ProjectionsByCustomerByYearID, 11, @NovForecast, @NovActual;
		--EXEC stlProjectionsByCustomerByYearScratchPadForSalesRepsNotRealDataUpsert @ProjectionsByCustomerByYearID, 12, @DecForecast, @DecActual;

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

