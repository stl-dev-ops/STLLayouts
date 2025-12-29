SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlSalesRepTargetsUpdate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlSalesRepTargetsUpdate] AS' 
END

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[stlSalesRepTargetsUpdate] 
	-- Add the parameters for the stored procedure here
	@ID int,
	@vrt__ref nvarchar(6),
	@Year nvarchar(4),
	@Month nvarchar(2),
	@SalesTarget nvarchar(20)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

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
    -- Insert statements for procedure here
	UPDATE dbo.stlSalesRepresentativeTargets
	SET vrt__ref = @vrt__ref,
	    YearID = @YearID,
	    MonthID = @MonthID,
	    SalesTarget = @pSalesTarget
	WHERE ID = @ID;

	IF @@ERROR<>0 
		RAISERROR('Failed on updating sales rep targets.', 16, 1);
	END
RETURN


