SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Material_Quantity_As_Of]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'
-- =============================================
-- Author:		jeff
-- Create date: 11/23/2021
-- Description:	expected material quantity as of a certain date
--
--CASE grsbon__.fiat__ok
--WHEN ''0'' THEN ''No confirmation needed''
--WHEN ''1'' THEN ''To confirm''
--WHEN ''2'' THEN ''Cancelled''
--WHEN ''3'' THEN ''Modified''
--WHEN ''4'' THEN ''Confirmed after changes''
--WHEN ''5'' THEN ''Already confirmed''
--WHEN ''6'' THEN ''Rejected'' END AS Confirmation
--
--CASE grsbon__.lev__tst
--WHEN ''0'' THEN ''Cancelled''
--WHEN ''3'' THEN ''Completely delivered''
--
--CASE fac__tst.lev__tst
--WHEN ''0'' THEN ''Cancelled''
--WHEN ''3'' THEN ''Completely invoiced''
--
-- =============================================
CREATE FUNCTION [dbo].[Material_Quantity_As_Of] 
(
	-- Add the parameters for the function here
	@art__ref nvarchar(6),
	@as_of_date datetime
)
RETURNS decimal(10,2)
AS
BEGIN
	-- Declare the return variable here
	DECLARE @exp_amount decimal(10,2);

	-- Add the T-SQL statements to compute the return value here 
	SELECT @exp_amount = ISNULL(SUM(Amount), 0)
	FROM (
			SELECT DATEADD(MINUTE, dbo.GetMinutesFromCERMTimeString(glev_uur), CAST(glev_dat AS DATETIME)) AsOf, art__ref ID, gaant___ - laant___ as Amount
			FROM grsbon__
			WHERE lev__tst NOT IN (''0'', ''3'') AND fac__tst NOT IN (''0'', ''3'') AND fiat__ok NOT IN (''2'', ''6'') AND art__ref = @art__ref AND DATEADD(MINUTE, dbo.GetMinutesFromCERMTimeString(glev_uur), CAST(glev_dat AS DATETIME)) <= @as_of_date 
			UNION ALL
			SELECT DATEADD(MINUTE, dbo.GetMinutesFromCERMTimeString(uur_resv), CAST(dat_resv AS DATETIME)) AsOf, resgrd__.art__ref ID, resgrd__.reserve_ *-1.0 Amount
			FROM resgrd__
			WHERE art__ref = @art__ref AND DATEADD(MINUTE, dbo.GetMinutesFromCERMTimeString(uur_resv), CAST(dat_resv AS DATETIME)) <= @as_of_date 
			UNION ALL
			SELECT DATEADD(MINUTE, dbo.GetMinutesFromCERMTimeString(uur_____), CAST(datum___ AS DATETIME)) AsOF, art__ref ID, aantal__ Amount
			FROM stobew__
			WHERE art__ref = @art__ref AND DATEADD(MINUTE, dbo.GetMinutesFromCERMTimeString(uur_____), CAST(datum___ AS DATETIME)) <= @as_of_date 
	) ExpAmounts;

	-- Return the result of the function
	RETURN @exp_amount;

END
' 
END

