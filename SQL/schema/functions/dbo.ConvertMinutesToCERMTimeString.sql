SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ConvertMinutesToCERMTimeString]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Jon Dragt>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,returns minutes from a CERMTimeString>
-- =============================================
CREATE FUNCTION [dbo].[ConvertMinutesToCERMTimeString]
(
	-- Add the parameters for the function here
	@minutes  int
)
RETURNS NVARCHAR(6)
AS
BEGIN
	-- Declare the return variable here
	DECLARE @CERMTimeString NVARCHAR(6)
	
	--CERMTimeStrings are 6 chars, Right Justified [ hh:mm], I supposed that first space is for a ''-'' if it''s negative? I''m going to assume that''s not necessary for now, and fix it later if needed
	IF @minutes is null
		return ''''

	SET @CERMTimeString = 
		CASE 
			WHEN @minutes >= 60 THEN
				(SELECT '' '' + CAST((@minutes / 60) AS VARCHAR(2)) + '':'' +  
						CASE WHEN (@minutes % 60) > 0 THEN
							 RIGHT(''00'' + CAST((@minutes % 60) AS VARCHAR(2)), 2)
						ELSE
							''00''
						END)
			WHEN @minutes >= 10 THEN
				(SELECT ''  0:'' + CAST((@minutes) AS VARCHAR(2)))
			ELSE 
				(SELECT ''  0:0'' + CAST((@minutes) AS VARCHAR(1)))
			END

return @CERMTimeString
END
' 
END

