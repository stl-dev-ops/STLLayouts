SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlSalesRepTargetsInsert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlSalesRepTargetsInsert] AS' 
END

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[stlSalesRepTargetsInsert] 
	-- Add the parameters for the stored procedure here
	--@ID int OUTPUT,
	@vrt__ref nvarchar(6),
	@Year nvarchar(4),
	@Month nvarchar(2),
	@SalesTarget nvarchar(20)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    DECLARE @YearID int, @MonthID int, @pSalesTarget money;
    
    IF ISNUMERIC(@Year) = 1
	BEGIN
		SET @YearID = CAST(@Year AS int);
	END
	IF ISNUMERIC(@Month) = 1
	BEGIN
		SET @MonthID = CAST(@Month AS int);
	END
    IF ISNUMERIC(@SalesTarget) = 1 
    BEGIN
		SET @pSalesTarget = CAST(@SalesTarget AS money);
    END
    
	INSERT INTO dbo.stlSalesRepresentativeTargets ( vrt__ref, YearID, MonthID, SalesTarget )
	VALUES ( @vrt__ref, @YearID, @MonthID, @pSalesTarget );
	
	--SELECT @ID = SCOPE_IDENTITY();
	
	IF @@ERROR<>0 
		RAISERROR('Failed on inserting sales rep targets.', 16, 1);
	END
RETURN


