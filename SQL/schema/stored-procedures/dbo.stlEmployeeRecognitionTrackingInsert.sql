SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlEmployeeRecognitionTrackingInsert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlEmployeeRecognitionTrackingInsert] AS' 
END

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[stlEmployeeRecognitionTrackingInsert] 
	-- Add the parameters for the stored procedure here
	
	@IncentiveOfferDate nvarchar(12),
	@usernbr_ nvarchar(6),
	@ExpectedPayDate nvarchar(12),
	@ActualPayDate nvarchar(12),
	@Amount  nvarchar(20),
	@Manager_usernbr_ nvarchar(6),
	@RecognitionTypeID nvarchar(2),
	@Comments nvarchar(1000)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    DECLARE @pAmount money,
			@incDate date,
			@expPayDate date,
			@actPayDate date,
			@pRecognitionTypeID int,
			@ID int,
			@trimedComments nvarchar(1000);
	
	SET @trimedComments = '';
	
	IF @Comments IS NOT NULL
		SET @trimedComments	= RTRIM(LTRIM(@Comments));

    IF ISNUMERIC(@Amount) = 1 
    BEGIN
		SET @pAmount = CAST(@Amount AS money);
    END
    
    IF ISDATE(@IncentiveOfferDate) = 1
    BEGIN
		SET @incDate = CAST(@IncentiveOfferDate AS date);
    END
    
    IF ISDATE(@ExpectedPayDate) = 1
    BEGIN
		SET @expPayDate = CAST(@ExpectedPayDate AS date);
    END
    
    IF ISDATE(@ActualPayDate) = 1
    BEGIN
		SET @actPayDate = CAST(@ActualPayDate AS date);
    END
    
	IF ISNUMERIC(@RecognitionTypeID) = 1
	BEGIN
		SET @pRecognitionTypeID = CAST(@RecognitionTypeID AS int);
	END

	INSERT INTO dbo.stlEmployeeRecognitionTracking ( IncentiveOfferDate, usernbr_, ExpectedPayDate, ActualPayDate, Amount, Manager_usernbr_, RecognitionTypeID )
	VALUES ( @incDate, @usernbr_, @expPayDate, @actPayDate, @pAmount, @Manager_usernbr_, @pRecognitionTypeID );
	
	SELECT @ID = SCOPE_IDENTITY();
	
	IF @trimedComments <> ''
		INSERT INTO dbo.stlEmployeeRecognitionComments ( EmployeeRecognitionTrackingID, Comments )
		VALUES ( @ID, @trimedComments );

	IF @@ERROR<>0 
		RAISERROR('Failed on inserting Employee Recognition Tracking.', 16, 1);
	END
RETURN


