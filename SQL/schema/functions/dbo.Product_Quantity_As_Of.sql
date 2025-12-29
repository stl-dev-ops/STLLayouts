SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Product_Quantity_As_Of]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'-- =============================================
-- Author:		jeff rupp
-- Create date: 12/22/2021
-- Description:	how much product in stock on a certain day
-- Purpose:     find sales orders shipping from stl stock jobs with ship dates prior to stl stock job completion
-- =============================================

/*
	!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	THIS IS BROKEN, IT ONLY WORKS FOR FUTURE DATES!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

	I''ll fix it someday but it''s only used for forecasting currently
	!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
*/
CREATE FUNCTION [dbo].[Product_Quantity_As_Of] 
(
	-- Add the parameters for the function here
	@afg__ref NVARCHAR(6),
	@AsOfDate DATETIME
)
RETURNS int
AS
BEGIN
	-- Declare the return variable here
	DECLARE @InStock INT,
			@InProduction INT,
			@Ordered INT,
			@FinalStock INT;

	-- what''s in stock right now?
	SELECT @InStock = ISNULL(SUM(aant__ex), 0)
	FROM 
	(
		SELECT afg__ref, aant__ex
		FROM afgsku__ 
		WHERE toestand = ''1'' AND tst__qrt = ''1'' --in stock and not quarentined
	) s
	GROUP BY afg__ref 
	HAVING afg__ref = @afg__ref;

	IF (@InStock IS NULL)
	BEGIN
		SET @InStock = 0;
	END

	-- what will we product on/before as of date?
	SELECT @InProduction = SUM(ISNULL(InProduction, 0))
	FROM 
	(
		SELECT v4vrs___.afg__ref, MAX(dbo.vw_stlScheduleWithRealDateTimes.EndDate) AS ScheduleEndDate, v4vrs___.oplage__ InProduction
		FROM vw_stlScheduleWithRealDateTimes INNER JOIN v4vrs___ ON vw_stlScheduleWithRealDateTimes.ord__ref = v4vrs___.off__ref
		GROUP BY v4vrs___.oplage__, v4vrs___.afg__ref
		HAVING v4vrs___.afg__ref = @afg__ref
	) T
	WHERE ScheduleEndDate <= @AsOfDate

	IF (@InProduction IS NULL)
	BEGIN
		SET @InProduction = 0;
	END

	-- what will we ship on/before as of date?
	SELECT @Ordered = ISNULL(b_aantal, 0)
	FROM bstlyn__ 
	WHERE afg__ref = @afg__ref AND YEAR(vrz__dat) = 1980 AND vrzv_dat <= @AsOfDate 

	IF (@Ordered IS NULL)
	BEGIN
		SET @Ordered = 0;
	END

	SELECT @FinalStock = @InStock + @InProduction - @Ordered

	-- Return the result of the function
	RETURN @FinalStock

/*
afgsku__.toestand
ToestandProductenSKU   To produce	                0
ToestandProductenSKU	In stock	                1
ToestandProductenSKU	Picked	                    2
ToestandProductenSKU	Shipped	                    3
ToestandProductenSKU	Deleted (Don''t modify job)	4
ToestandProductenSKU	Deleted (Change job)	    5
ToestandProductenSKU	Consumed	                6

afgsku__.tst__qrt
QuarantaineToestand	    Not in quarantine	        1
QuarantaineToestand	    Partly in quarantine	    2
QuarantaineToestand	    Completely in quarantine	3 
*/


END
' 
END

