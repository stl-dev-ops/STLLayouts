SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlPaychexImportHoursToCERMTimeString]'))
EXEC dbo.sp_executesql @statement = N'







CREATE VIEW [dbo].[vw_stlPaychexImportHoursToCERMTimeString]
AS

SELECT *, (dbo.GetMinutesFromCERMTimeString(ClockOut) - dbo.GetMinutesFromCERMTimeString(ClockIn)) / 60.0 [Hours] 
FROM 
( 
	SELECT stlPaychexImportID, empNo, lastName, firstName, clockInType, clockOutType, clockingDate ActualDate, fixedClockingDate [SHIFT DATE], 

		ClockIn = 
			CAST('' '' + LEFT([clockInTime], 5) AS nvarchar(6)), 

		ClockOut = 
			CASE WHEN CAST('' '' + LEFT([clockOutTime], 6) AS nvarchar(6)) = '' 00:00'' THEN 
				CASE WHEN CAST('' '' + LEFT([clockInTime], 5) AS nvarchar(6)) <> '' 00:00'' THEN
					'' 24:00''
				ELSE
					CAST('' '' + LEFT([clockOutTime], 6) AS nvarchar(6))
				END
			ELSE
				CAST('' '' + LEFT([clockOutTime], 5) AS nvarchar(6))
			END
		  
	FROM stlPaychexImport

) pc 

' 
