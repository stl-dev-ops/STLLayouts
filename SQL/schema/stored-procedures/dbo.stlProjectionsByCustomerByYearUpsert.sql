SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlProjectionsByCustomerByYearUpsert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlProjectionsByCustomerByYearUpsert] AS' 
END



-- =============================================
-- Author:		jeff rupp
-- Create date: 12/6/2023
-- Description:	
-- =============================================
ALTER PROCEDURE [dbo].[stlProjectionsByCustomerByYearUpsert]
	-- Add the parameters for the stored procedure here
	@kla__ref nvarchar(6),
	@ProjectionYear varchar(4),
	@ProjectedValue varchar(7),
	@Phone nvarchar(255),
	@Contact nvarchar(255),
	@State nvarchar(255),
	@Notes nvarchar(1000),
	@JanRevision varchar(7),
	@FebRevision varchar(7),
	@MarRevision varchar(7),
	@AprRevision varchar(7),
	@MayRevision varchar(7),
	@JunRevision varchar(7),
	@JulRevision varchar(7),
	@AugRevision varchar(7),
	@SepRevision varchar(7),
	@OctRevision varchar(7),
	@NovRevision varchar(7),
	@DecRevision varchar(7)
AS
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	-- SET NOCOUNT ON;

BEGIN TRANSACTION
	DECLARE @ProjectionsByCustomerByYearID int,
			@_ProjectionYear int,
			@_OldProjectedValue int,
			@_NewProjectedValue int,
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
		
		IF ISNUMERIC(@ProjectedValue) <> 0
		BEGIN
			SET @_NewProjectedValue = CAST(@ProjectedValue AS int);
		END

		SELECT @ProjectionsByCustomerByYearID = ISNULL((SELECT ID FROM stlProjectionsByCustomerByYear WHERE ProjectionYear = @_ProjectionYear AND kla__ref = @kla__ref), 0);

		IF (@ProjectionsByCustomerByYearID = 0)
		BEGIN
			INSERT INTO stlProjectionsByCustomerByYear 
					(ProjectionYear, kla__ref, ProjectedValue)
			VALUES (@_ProjectionYear, @kla__ref, @_NewProjectedValue);

			SELECT @ProjectionsByCustomerByYearID = SCOPE_IDENTITY();
		END
		ELSE
		BEGIN
			SELECT @_OldProjectedValue = (SELECT ProjectedValue FROM stlProjectionsByCustomerByYear WHERE ID = @ProjectionsByCustomerByYearID);
			IF (@_OldProjectedValue <> @_NewProjectedValue)
			BEGIN
				UPDATE stlProjectionsByCustomerByYear
				SET ProjectedValue = @_NewProjectedValue,
					Updated        = GETDATE(),
					UpdatedBy      = SUSER_SNAME()
				WHERE ID = @ProjectionsByCustomerByYearID;
			END 
		END

		SELECT @_OldNotes = Notes
		FROM stlProjectionsByCustomerByYearNotes 
		WHERE Deleted = 0 AND ProjectionsByCustomerByYearID = @ProjectionsByCustomerByYearID;

		SET @_OldNotes   = ISNULL(@_OldNotes, '');

		IF (@_OldNotes <> @_NewNotes) 
		BEGIN
			UPDATE stlProjectionsByCustomerByYearNotes
			SET Deleted = 1
			WHERE ProjectionsByCustomerByYearID = @ProjectionsByCustomerByYearID;
			
			IF (LEN(@_NewNotes) <> 0)
			BEGIN
				INSERT INTO stlProjectionsByCustomerByYearNotes (ProjectionsByCustomerByYearID, Notes)
				VALUES (@ProjectionsByCustomerByYearID, @_NewNotes);
			END
		END

		SELECT @_OldPhone = Phone, @_OldContact = Contact, @_OldState = [State]
		FROM stlProjectionsByCustomerContactInfo 
		WHERE Deleted = 0 AND kla__ref = @kla__ref;

		SET @_OldPhone   = ISNULL(@_OldPhone, '');
		SET @_OldContact = ISNULL(@_OldContact, '');
		SET @_OldState   = ISNULL(@_OldState, '');

		IF (@_OldPhone <> @_NewPhone OR @_OldContact <> @_NewContact OR @_OldState <> @_NewState) 
		BEGIN
			UPDATE stlProjectionsByCustomerContactInfo
			SET Deleted = 1
			WHERE kla__ref = @kla__ref;
			
			IF ((LEN(@_NewPhone) + LEN(@_NewContact) + LEN(@_NewState)) <> 0)
			BEGIN
				INSERT INTO stlProjectionsByCustomerContactInfo (kla__ref, Phone, Contact, [State])
				VALUES (@kla__ref, @_NewPhone, @_NewContact, @_NewState);
			END
		END

		EXEC stlProjectionsByCustomerByYearMonthRevisionUpsert @ProjectionsByCustomerByYearID,  1, @JanRevision;
		EXEC stlProjectionsByCustomerByYearMonthRevisionUpsert @ProjectionsByCustomerByYearID,  2, @FebRevision;
		EXEC stlProjectionsByCustomerByYearMonthRevisionUpsert @ProjectionsByCustomerByYearID,  3, @MarRevision;
		EXEC stlProjectionsByCustomerByYearMonthRevisionUpsert @ProjectionsByCustomerByYearID,  4, @AprRevision;
		EXEC stlProjectionsByCustomerByYearMonthRevisionUpsert @ProjectionsByCustomerByYearID,  5, @MayRevision;
		EXEC stlProjectionsByCustomerByYearMonthRevisionUpsert @ProjectionsByCustomerByYearID,  6, @JunRevision;
		EXEC stlProjectionsByCustomerByYearMonthRevisionUpsert @ProjectionsByCustomerByYearID,  7, @JulRevision;
		EXEC stlProjectionsByCustomerByYearMonthRevisionUpsert @ProjectionsByCustomerByYearID,  8, @AugRevision;
		EXEC stlProjectionsByCustomerByYearMonthRevisionUpsert @ProjectionsByCustomerByYearID,  9, @SepRevision;
		EXEC stlProjectionsByCustomerByYearMonthRevisionUpsert @ProjectionsByCustomerByYearID, 10, @OctRevision;
		EXEC stlProjectionsByCustomerByYearMonthRevisionUpsert @ProjectionsByCustomerByYearID, 11, @NovRevision;
		EXEC stlProjectionsByCustomerByYearMonthRevisionUpsert @ProjectionsByCustomerByYearID, 12, @DecRevision;

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

