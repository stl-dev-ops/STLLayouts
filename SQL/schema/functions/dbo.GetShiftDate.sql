SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetShiftDate]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Jon Dragt>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,returns date based on before or after 04:00>
-- =============================================
CREATE FUNCTION [dbo].[GetShiftDate]
(
	-- Add the parameters for the function here
	@datum___ datetime,
	@starten_  nvarchar(6)
)
RETURNS DATETIME
AS
BEGIN
	-- Declare the return variable here
	DECLARE @retDate DATETIME
	DECLARE @dateHour INT
	
	IF @datum___ is null
		return @datum___
	IF @starten_ is null
		return @datum___
	if CHARINDEX('':'', @starten_, 0) = 0
		return @datum___

	-- if the starten is before 04:00 then subtract a day from the datum because it belongs to the previous shift day
	SET @dateHour = CAST(LEFT(@starten_, CHARINDEX('':'', @starten_, 0) - 1) AS int)
	IF @dateHour < 4
		SET @retDate = DATEADD(day, -1, @datum___)
	ELSE
		SET @retDate = @datum___

	-- Return the result of the function
	RETURN @retDate

END
' 
END

