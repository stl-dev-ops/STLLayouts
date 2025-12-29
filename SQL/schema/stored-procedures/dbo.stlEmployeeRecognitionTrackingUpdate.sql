SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlEmployeeRecognitionTrackingUpdate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlEmployeeRecognitionTrackingUpdate] AS' 
END

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[stlEmployeeRecognitionTrackingUpdate] 
	-- Add the parameters for the stored procedure here
	@ID int,
	@IncentiveOfferDate  nvarchar(12),
	@usernbr_ nvarchar(6),
	@ExpectedPayDate  nvarchar(12),
	@ActualPayDate  nvarchar(12),
	@Amount  nvarchar(20),
	@Manager_usernbr_ nvarchar(6),
	@RecognitionTypeID nvarchar(2),
	@Comments nvarchar(1000)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @pAmount money,
			@incDate date,
			@expPayDate date,
			@actPayDate date,
			@pRecognitionTypeID int,
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

    -- Insert statements for procedure here
	UPDATE dbo.stlEmployeeRecognitionTracking
	SET IncentiveOfferDate = @incDate,
	    usernbr_           = @usernbr_,
	    ExpectedPayDate    = @expPayDate,
	    ActualPayDate      = @actPayDate,
	    Amount             = @pAmount,
	    Manager_usernbr_   = @Manager_usernbr_,
	    RecognitionTypeID  = @pRecognitionTypeID,
		Modified           = GETDATE()
	WHERE ID = @ID;

	DELETE FROM dbo.stlEmployeeRecognitionComments WHERE EmployeeRecognitionTrackingID = @ID;
	
	IF @trimedComments <> ''
		INSERT INTO dbo.stlEmployeeRecognitionComments ( EmployeeRecognitionTrackingID, Comments )
		VALUES ( @ID, @trimedComments );

	IF @@ERROR<>0 
		RAISERROR('Failed on updating Employee Recognition Tracking.', 16, 1);
	END
RETURN


