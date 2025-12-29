SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CalculateDiesNeeded]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Jeff Rupp
-- Create date: 8/8/2025
-- Description:	How many dies does a job need?
-- =============================================
CREATE FUNCTION CalculateDiesNeeded(@stns_ref VARCHAR(255), @EstimatedRevolutions INT)
RETURNS INT
AS
BEGIN
  DECLARE @first_letter CHAR(1);
  DECLARE @DiesNeeded INT;

  SET @first_letter = UPPER(LEFT(@stns_ref, 1));

  IF @EstimatedRevolutions <= 0
	SET @DiesNeeded = 0;
  ELSE
	  IF @first_letter IN (''R'', ''I'')
		BEGIN
		  IF @EstimatedRevolutions <= 59999
			SET @DiesNeeded = 1;
		  ELSE IF @EstimatedRevolutions <= 199999
			SET @DiesNeeded = 2;
		  ELSE
			SET @DiesNeeded = 3;
		END;
	  ELSE IF @first_letter = ''S''
		BEGIN
		  IF @EstimatedRevolutions <= 119999
			SET @DiesNeeded = 1;
		  ELSE IF @EstimatedRevolutions <= 239999
			SET @DiesNeeded = 2;
		  ELSE
			SET @DiesNeeded = 3;
		END;
	  ELSE
		SET @DiesNeeded = 1;
	
RETURN @DiesNeeded;
END;
' 
END

