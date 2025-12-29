SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[udf_crm_EncodeDateTime2]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'--
-- Converts a Cerm based Date and Time to a DATETIME2(3)
--    Date: usualy without time part
--    Time: NVCHAR (6) " hh:mm"
-- 
-- Function adds the time to the Date. Time can be > " 23:59".
-- If the time is invalid (eg " XX:XX"), it is ignored.
-- Should the date contain a time, this is ignored
--
-- SELECT *
--  FROM w_atl1__
-- WHERE wp___ref = ''5281'' 
--   AND dbo.udf_crm_EncodeDateTime2 (datum___, starten_) > DATEADD (dd, -15, SYSDATETIME ()) 
--
CREATE FUNCTION [dbo].[udf_crm_EncodeDateTime2]
(
   @InputDate DATETIME2,
   @InputTime NVARCHAR (6)
)
RETURNS DATETIME2(3)
 AS
BEGIN
    DECLARE @Result DATETIME2(3)
    SET @Result = CONVERT (DATE, @InputDate)

    -- Is @TimeAsString numeric?
    DECLARE @TimeAsString NVARCHAR (6)

    SET @TimeAsString = REPLACE (@InputTime, '':'', '''')
    SET @TimeAsString = REPLACE (@TimeAsString , '' '', '''')

    IF ISNUMERIC (@TimeAsString) = 1
       BEGIN
          DECLARE @TimeAsFloat FLOAT
          SET @TimeAsFloat = CONVERT (FLOAT, @TimeAsString)   -- If the String contains a ".", then IsNumeric succeeds, but Convert fails

          DECLARE @Factor INT
          SET @Factor = LEN (@InputTime) - CHARINDEX ('':'', @InputTime)

          IF @Factor <= 0
             SET @Factor = 1

          SET @Factor = POWER (10, @Factor)

          SET @Result = DATEADD (hh,  CONVERT (INT, @TimeAsFloat) / @Factor, @Result)  -- ''1354'' => 13
          SET @Result = DATEADD (mi,  CONVERT (INT, @TimeAsFloat) % @Factor, @Result)  -- ''1354'' => 54
       END

    RETURN @Result
END' 
END

