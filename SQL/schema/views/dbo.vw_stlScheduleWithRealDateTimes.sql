SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlScheduleWithRealDateTimes]'))
EXEC dbo.sp_executesql @statement = N'

CREATE VIEW [dbo].[vw_stlScheduleWithRealDateTimes]
AS
SELECT 
DATEADD(MINUTE, dbo.GetMinutesFromCERMTimeString(start___), CAST(datum___ AS datetime)) AS StartDate, 
DATEADD(MINUTE, dbo.GetMinutesFromCERMTimeString(stop____), CAST(datumend AS datetime)) AS EndDate, 
DATEADD(MINUTE, dbo.GetMinutesFromCERMTimeString(sta__min), CAST(dat__min AS datetime)) AS EarliestDate, 
DATEADD(MINUTE, dbo.GetMinutesFromCERMTimeString(sta__max), CAST(dat__max AS datetime)) AS LastDate, *
FROM plandv__
' 
