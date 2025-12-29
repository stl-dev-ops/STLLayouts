SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_stlBusinessDaysCalendar]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW dbo.vw_stlBusinessDaysCalendar
AS
SELECT        BusinessDate, YearID, MonthID, DayID, BusinessDay, WeekDayID, Created
FROM            dbo.stlBusinessDaysCalendar
' 
