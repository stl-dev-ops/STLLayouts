SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetMinutesFromCERMTimeString]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Jon Dragt>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,returns minutes from a CERMTimeString>
-- =============================================
CREATE FUNCTION [dbo].[GetMinutesFromCERMTimeString]
(
	-- Add the parameters for the function here
	@CERMTimeString  nvarchar(6)
)
RETURNS INTEGER
AS
BEGIN
	-- Declare the return variable here
	DECLARE @Minutes INTEGER
	
	IF @CERMTimeString is null
		return 0
	if CHARINDEX('':'', @CERMTimeString, 0) = 0
		return 0

	-- Add the T-SQL statements to compute the return value here
	SET @Minutes = (CAST(LEFT(@CERMTimeString, CHARINDEX('':'', @CERMTimeString, 0) - 1) AS int) * 60 + CAST(RIGHT(@CERMTimeString, LEN(@CERMTimeString) - CHARINDEX('':'', @CERMTimeString, 0)) AS int))
--		SET @Minutes = 0

	-- Return the result of the function
	RETURN @Minutes

END
' 
END

