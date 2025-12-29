SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_stlPKZ_InsertLog]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SP_stlPKZ_InsertLog] AS' 
END
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
--        .Parameters.Append .CreateParameter("@p_art__ref", adVarChar, adParamInput, 15, params(0))
--        .Parameters.Append .CreateParameter("@p_art__rpn", adVarChar, adParamInput, 17, params(1))
--        .Parameters.Append .CreateParameter("@p_art_oms1", adVarChar, adParamInput, 250, params(2))
--        .Parameters.Append .CreateParameter("@p_thisWeekNeeded", adDouble, adParamInput, , params(3))
--        .Parameters.Append .CreateParameter("@p_nextWeekNeeded", adDouble, adParamInput, , params(4))
--        .Parameters.Append .CreateParameter("@p_qtyMade", adDouble, adParamInput, , CDbl(Me.txtQtyMade))
--        .Parameters.Append .CreateParameter("@p_operator", adVarChar, adParamInput, 250, strOperator)

ALTER PROCEDURE [dbo].[SP_stlPKZ_InsertLog] 
	-- Add the parameters for the stored procedure here
	@p_art__ref as varchar(15), 
	@p_art__rpn as varchar(17),
	@p_art_oms1 as varchar(250),
	@p_thisWeekNeeded as float,
	@p_nextWeekNeeded as float,
	@p_qtyMade as float,
	@p_operator as varchar(250)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO stlPKZ_Log (art__ref, art__rpn, art_oms1, thisWeekNeeded, nextWeekNeeded, qtyMade, operator) 
		VALUES(@p_art__ref, @p_art__rpn,@p_art_oms1,@p_thisWeekNeeded, @p_nextWeekNeeded, @p_qtyMade, @p_operator)
END

