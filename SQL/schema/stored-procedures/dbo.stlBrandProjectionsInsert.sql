SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlBrandProjectionsInsert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlBrandProjectionsInsert] AS' 
END
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[stlBrandProjectionsInsert] 
	-- Add the parameters for the stored procedure here
	--@ID int OUTPUT,
	@prfm_ref nvarchar(10),
	@Year nvarchar(4),
	@ProjectedLow nvarchar(20),
	@ProjectedHigh nvarchar(20)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    DECLARE @YearID int, @pLow money, @pHigh money;
    
    IF ISNUMERIC(@Year) = 1
	BEGIN
		SET @YearID = CAST(@Year AS int);
	END
    IF ISNUMERIC(@ProjectedLow) = 1 
    BEGIN
		SET @pLow = CAST(@ProjectedLow AS money);
    END
    IF ISNUMERIC(@ProjectedHigh) = 1 
    BEGIN
		SET @pHigh = CAST(@ProjectedHigh AS money);
    END
    
	INSERT INTO dbo.stlBrandProjections ( prfm_ref, YearID, ProjectedLow, ProjectedHigh )
	VALUES ( @prfm_ref, @YearID, @pLow, @pHigh );
	
	--SELECT @ID = SCOPE_IDENTITY();
	
	IF @@ERROR<>0 
		RAISERROR('Failed on inserting brand projections.', 16, 1);
	END
RETURN

