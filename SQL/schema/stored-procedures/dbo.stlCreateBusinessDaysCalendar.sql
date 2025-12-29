SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlCreateBusinessDaysCalendar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[stlCreateBusinessDaysCalendar] AS' 
END




-- =============================================
-- Author:		jeff rupp
-- Create date: 07/21/2022
-- Description:	Normalize CERM calendar into stlBusinessDaysCalendar
-- =============================================
ALTER PROCEDURE [dbo].[stlCreateBusinessDaysCalendar]
	-- Add the parameters for the stored procedure here

AS
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	-- SET NOCOUNT ON;

BEGIN TRANSACTION

	BEGIN TRY


	DELETE FROM stlBusinessDaysCalendar;

	INSERT INTO stlBusinessDaysCalendar (BusinessDate, YearID, QuarterID, MonthID, DayID, BusinessDay, WeekDayID, FiscalYearID, FirstDayOfQuarter, LastDayOfQuarter)

	SELECT BusinessDate, YearID, QuarterID, MonthID, DayID, BusinessDay, DATEPART(dw, BusinessDate),
		CASE WHEN MonthID > 9 THEN YearID ELSE YearID -1 END, FirstDayOfQuarter, LastDayOfQuarter 

	FROM (SELECT YearID, QuarterID, MonthID, DayID, BusinessDay, DATEFROMPARTS(YearID, MonthID, DayID) AS BusinessDate, FirstDayOfQuarter, LastDayOfQuarter
	FROM 
	(
		SELECT kal__ref, 2000 + CAST(jaar_ref AS int) AS YearID, DATEPART(QUARTER, DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)) AS QuarterID, CAST(mnd__ref AS int) AS MonthID, 1 AS DayID, dag___01 AS BusinessDay,CAST(DATEADD(qq,DATEDIFF(qq, 0, DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)),0) AS DATE) AS FirstDayOfQuarter,CAST(DATEADD (dd, -1, DATEADD(qq, DATEDIFF(qq, 0,  DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)) +1, 0)) AS DATE) AS LastDayOfQuarter
		FROM plnkal__
		UNION
		SELECT kal__ref, 2000 + CAST(jaar_ref AS int) AS YearID, DATEPART(QUARTER, DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)) AS QuarterID, CAST(mnd__ref AS int) AS MonthID, 2 AS DayID, dag___02 AS BusinessDay,CAST(DATEADD(qq,DATEDIFF(qq, 0, DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)),0) AS DATE) AS FirstDayOfQuarter,CAST(DATEADD (dd, -1, DATEADD(qq, DATEDIFF(qq, 0,  DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)) +1, 0)) AS DATE) AS LastDayOfQuarter
		FROM dbo.plnkal__
		UNION
		SELECT kal__ref, 2000 + CAST(jaar_ref AS int) AS YearID, DATEPART(QUARTER, DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)) AS QuarterID, CAST(mnd__ref AS int) AS MonthID, 3 AS DayID, dag___03 AS BusinessDay,CAST(DATEADD(qq,DATEDIFF(qq, 0, DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)),0) AS DATE) AS FirstDayOfQuarter,CAST(DATEADD (dd, -1, DATEADD(qq, DATEDIFF(qq, 0,  DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)) +1, 0)) AS DATE) AS LastDayOfQuarter
		FROM dbo.plnkal__
		UNION
		SELECT kal__ref, 2000 + CAST(jaar_ref AS int) AS YearID, DATEPART(QUARTER, DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)) AS QuarterID, CAST(mnd__ref AS int) AS MonthID, 4 AS DayID, dag___04 AS BusinessDay,CAST(DATEADD(qq,DATEDIFF(qq, 0, DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)),0) AS DATE) AS FirstDayOfQuarter,CAST(DATEADD (dd, -1, DATEADD(qq, DATEDIFF(qq, 0,  DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)) +1, 0)) AS DATE) AS LastDayOfQuarter
		FROM dbo.plnkal__
		UNION
		SELECT kal__ref, 2000 + CAST(jaar_ref AS int) AS YearID, DATEPART(QUARTER, DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)) AS QuarterID, CAST(mnd__ref AS int) AS MonthID, 5 AS DayID, dag___05 AS BusinessDay,CAST(DATEADD(qq,DATEDIFF(qq, 0, DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)),0) AS DATE) AS FirstDayOfQuarter,CAST(DATEADD (dd, -1, DATEADD(qq, DATEDIFF(qq, 0,  DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)) +1, 0)) AS DATE) AS LastDayOfQuarter
		FROM dbo.plnkal__
		UNION
		SELECT kal__ref, 2000 + CAST(jaar_ref AS int) AS YearID, DATEPART(QUARTER, DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)) AS QuarterID, CAST(mnd__ref AS int) AS MonthID, 6 AS DayID, dag___06 AS BusinessDay,CAST(DATEADD(qq,DATEDIFF(qq, 0, DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)),0) AS DATE) AS FirstDayOfQuarter,CAST(DATEADD (dd, -1, DATEADD(qq, DATEDIFF(qq, 0,  DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)) +1, 0)) AS DATE) AS LastDayOfQuarter
		FROM dbo.plnkal__
		UNION
		SELECT kal__ref, 2000 + CAST(jaar_ref AS int) AS YearID, DATEPART(QUARTER, DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)) AS QuarterID, CAST(mnd__ref AS int) AS MonthID, 7 AS DayID, dag___07 AS BusinessDay,CAST(DATEADD(qq,DATEDIFF(qq, 0, DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)),0) AS DATE) AS FirstDayOfQuarter,CAST(DATEADD (dd, -1, DATEADD(qq, DATEDIFF(qq, 0,  DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)) +1, 0)) AS DATE) AS LastDayOfQuarter
		FROM dbo.plnkal__
		UNION
		SELECT kal__ref, 2000 + CAST(jaar_ref AS int) AS YearID, DATEPART(QUARTER, DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)) AS QuarterID, CAST(mnd__ref AS int) AS MonthID, 8 AS DayID, dag___08 AS BusinessDay,CAST(DATEADD(qq,DATEDIFF(qq, 0, DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)),0) AS DATE) AS FirstDayOfQuarter,CAST(DATEADD (dd, -1, DATEADD(qq, DATEDIFF(qq, 0,  DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)) +1, 0)) AS DATE) AS LastDayOfQuarter
		FROM dbo.plnkal__
		UNION
		SELECT kal__ref, 2000 + CAST(jaar_ref AS int) AS YearID, DATEPART(QUARTER, DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)) AS QuarterID, CAST(mnd__ref AS int) AS MonthID, 9 AS DayID, dag___09 AS BusinessDay,CAST(DATEADD(qq,DATEDIFF(qq, 0, DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)),0) AS DATE) AS FirstDayOfQuarter,CAST(DATEADD (dd, -1, DATEADD(qq, DATEDIFF(qq, 0,  DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)) +1, 0)) AS DATE) AS LastDayOfQuarter
		FROM dbo.plnkal__
		UNION
		SELECT kal__ref, 2000 + CAST(jaar_ref AS int) AS YearID, DATEPART(QUARTER, DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)) AS QuarterID, CAST(mnd__ref AS int) AS MonthID, 10 AS DayID, dag___10 AS BusinessDay,CAST(DATEADD(qq,DATEDIFF(qq, 0, DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)),0) AS DATE) AS FirstDayOfQuarter,CAST(DATEADD (dd, -1, DATEADD(qq, DATEDIFF(qq, 0,  DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)) +1, 0)) AS DATE) AS LastDayOfQuarter
		FROM dbo.plnkal__
		UNION
		SELECT kal__ref, 2000 + CAST(jaar_ref AS int) AS YearID, DATEPART(QUARTER, DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)) AS QuarterID, CAST(mnd__ref AS int) AS MonthID, 11 AS DayID, dag___11 AS BusinessDay,CAST(DATEADD(qq,DATEDIFF(qq, 0, DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)),0) AS DATE) AS FirstDayOfQuarter,CAST(DATEADD (dd, -1, DATEADD(qq, DATEDIFF(qq, 0,  DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)) +1, 0)) AS DATE) AS LastDayOfQuarter
		FROM dbo.plnkal__
		UNION
		SELECT kal__ref, 2000 + CAST(jaar_ref AS int) AS YearID, DATEPART(QUARTER, DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)) AS QuarterID, CAST(mnd__ref AS int) AS MonthID, 12 AS DayID, dag___12 AS BusinessDay,CAST(DATEADD(qq,DATEDIFF(qq, 0, DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)),0) AS DATE) AS FirstDayOfQuarter,CAST(DATEADD (dd, -1, DATEADD(qq, DATEDIFF(qq, 0,  DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)) +1, 0)) AS DATE) AS LastDayOfQuarter
		FROM dbo.plnkal__
		UNION
		SELECT kal__ref, 2000 + CAST(jaar_ref AS int) AS YearID, DATEPART(QUARTER, DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)) AS QuarterID, CAST(mnd__ref AS int) AS MonthID, 13 AS DayID, dag___13 AS BusinessDay,CAST(DATEADD(qq,DATEDIFF(qq, 0, DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)),0) AS DATE) AS FirstDayOfQuarter,CAST(DATEADD (dd, -1, DATEADD(qq, DATEDIFF(qq, 0,  DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)) +1, 0)) AS DATE) AS LastDayOfQuarter
		FROM dbo.plnkal__
		UNION
		SELECT kal__ref, 2000 + CAST(jaar_ref AS int) AS YearID, DATEPART(QUARTER, DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)) AS QuarterID, CAST(mnd__ref AS int) AS MonthID, 14 AS DayID, dag___14 AS BusinessDay,CAST(DATEADD(qq,DATEDIFF(qq, 0, DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)),0) AS DATE) AS FirstDayOfQuarter,CAST(DATEADD (dd, -1, DATEADD(qq, DATEDIFF(qq, 0,  DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)) +1, 0)) AS DATE) AS LastDayOfQuarter
		FROM dbo.plnkal__
		UNION
		SELECT kal__ref, 2000 + CAST(jaar_ref AS int) AS YearID, DATEPART(QUARTER, DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)) AS QuarterID, CAST(mnd__ref AS int) AS MonthID, 15 AS DayID, dag___15 AS BusinessDay,CAST(DATEADD(qq,DATEDIFF(qq, 0, DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)),0) AS DATE) AS FirstDayOfQuarter,CAST(DATEADD (dd, -1, DATEADD(qq, DATEDIFF(qq, 0,  DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)) +1, 0)) AS DATE) AS LastDayOfQuarter
		FROM dbo.plnkal__
		UNION
		SELECT kal__ref, 2000 + CAST(jaar_ref AS int) AS YearID, DATEPART(QUARTER, DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)) AS QuarterID, CAST(mnd__ref AS int) AS MonthID, 16 AS DayID, dag___16 AS BusinessDay,CAST(DATEADD(qq,DATEDIFF(qq, 0, DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)),0) AS DATE) AS FirstDayOfQuarter,CAST(DATEADD (dd, -1, DATEADD(qq, DATEDIFF(qq, 0,  DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)) +1, 0)) AS DATE) AS LastDayOfQuarter
		FROM dbo.plnkal__
		UNION
		SELECT kal__ref, 2000 + CAST(jaar_ref AS int) AS YearID, DATEPART(QUARTER, DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)) AS QuarterID, CAST(mnd__ref AS int) AS MonthID, 17 AS DayID, dag___17 AS BusinessDay,CAST(DATEADD(qq,DATEDIFF(qq, 0, DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)),0) AS DATE) AS FirstDayOfQuarter,CAST(DATEADD (dd, -1, DATEADD(qq, DATEDIFF(qq, 0,  DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)) +1, 0)) AS DATE) AS LastDayOfQuarter
		FROM dbo.plnkal__
		UNION
		SELECT kal__ref, 2000 + CAST(jaar_ref AS int) AS YearID, DATEPART(QUARTER, DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)) AS QuarterID, CAST(mnd__ref AS int) AS MonthID, 18 AS DayID, dag___18 AS BusinessDay,CAST(DATEADD(qq,DATEDIFF(qq, 0, DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)),0) AS DATE) AS FirstDayOfQuarter,CAST(DATEADD (dd, -1, DATEADD(qq, DATEDIFF(qq, 0,  DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)) +1, 0)) AS DATE) AS LastDayOfQuarter
		FROM dbo.plnkal__
		UNION
		SELECT kal__ref, 2000 + CAST(jaar_ref AS int) AS YearID, DATEPART(QUARTER, DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)) AS QuarterID, CAST(mnd__ref AS int) AS MonthID, 19 AS DayID, dag___19 AS BusinessDay,CAST(DATEADD(qq,DATEDIFF(qq, 0, DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)),0) AS DATE) AS FirstDayOfQuarter,CAST(DATEADD (dd, -1, DATEADD(qq, DATEDIFF(qq, 0,  DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)) +1, 0)) AS DATE) AS LastDayOfQuarter
		FROM dbo.plnkal__
		UNION
		SELECT kal__ref, 2000 + CAST(jaar_ref AS int) AS YearID, DATEPART(QUARTER, DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)) AS QuarterID, CAST(mnd__ref AS int) AS MonthID, 20 AS DayID, dag___20 AS BusinessDay,CAST(DATEADD(qq,DATEDIFF(qq, 0, DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)),0) AS DATE) AS FirstDayOfQuarter,CAST(DATEADD (dd, -1, DATEADD(qq, DATEDIFF(qq, 0,  DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)) +1, 0)) AS DATE) AS LastDayOfQuarter
		FROM dbo.plnkal__
		UNION
		SELECT kal__ref, 2000 + CAST(jaar_ref AS int) AS YearID, DATEPART(QUARTER, DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)) AS QuarterID, CAST(mnd__ref AS int) AS MonthID, 21 AS DayID, dag___21 AS BusinessDay,CAST(DATEADD(qq,DATEDIFF(qq, 0, DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)),0) AS DATE) AS FirstDayOfQuarter,CAST(DATEADD (dd, -1, DATEADD(qq, DATEDIFF(qq, 0,  DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)) +1, 0)) AS DATE) AS LastDayOfQuarter
		FROM dbo.plnkal__
		UNION
		SELECT kal__ref, 2000 + CAST(jaar_ref AS int) AS YearID, DATEPART(QUARTER, DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)) AS QuarterID, CAST(mnd__ref AS int) AS MonthID, 22 AS DayID, dag___22 AS BusinessDay,CAST(DATEADD(qq,DATEDIFF(qq, 0, DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)),0) AS DATE) AS FirstDayOfQuarter,CAST(DATEADD (dd, -1, DATEADD(qq, DATEDIFF(qq, 0,  DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)) +1, 0)) AS DATE) AS LastDayOfQuarter
		FROM dbo.plnkal__
		UNION
		SELECT kal__ref, 2000 + CAST(jaar_ref AS int) AS YearID, DATEPART(QUARTER, DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)) AS QuarterID, CAST(mnd__ref AS int) AS MonthID, 23 AS DayID, dag___23 AS BusinessDay,CAST(DATEADD(qq,DATEDIFF(qq, 0, DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)),0) AS DATE) AS FirstDayOfQuarter,CAST(DATEADD (dd, -1, DATEADD(qq, DATEDIFF(qq, 0,  DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)) +1, 0)) AS DATE) AS LastDayOfQuarter
		FROM dbo.plnkal__
		UNION
		SELECT kal__ref, 2000 + CAST(jaar_ref AS int) AS YearID, DATEPART(QUARTER, DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)) AS QuarterID, CAST(mnd__ref AS int) AS MonthID, 24 AS DayID, dag___24 AS BusinessDay,CAST(DATEADD(qq,DATEDIFF(qq, 0, DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)),0) AS DATE) AS FirstDayOfQuarter,CAST(DATEADD (dd, -1, DATEADD(qq, DATEDIFF(qq, 0,  DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)) +1, 0)) AS DATE) AS LastDayOfQuarter
		FROM dbo.plnkal__
		UNION
		SELECT kal__ref, 2000 + CAST(jaar_ref AS int) AS YearID, DATEPART(QUARTER, DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)) AS QuarterID, CAST(mnd__ref AS int) AS MonthID, 25 AS DayID, dag___25 AS BusinessDay,CAST(DATEADD(qq,DATEDIFF(qq, 0, DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)),0) AS DATE) AS FirstDayOfQuarter,CAST(DATEADD (dd, -1, DATEADD(qq, DATEDIFF(qq, 0,  DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)) +1, 0)) AS DATE) AS LastDayOfQuarter
		FROM dbo.plnkal__
		UNION
		SELECT kal__ref, 2000 + CAST(jaar_ref AS int) AS YearID, DATEPART(QUARTER, DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)) AS QuarterID, CAST(mnd__ref AS int) AS MonthID, 26 AS DayID, dag___26 AS BusinessDay,CAST(DATEADD(qq,DATEDIFF(qq, 0, DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)),0) AS DATE) AS FirstDayOfQuarter,CAST(DATEADD (dd, -1, DATEADD(qq, DATEDIFF(qq, 0,  DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)) +1, 0)) AS DATE) AS LastDayOfQuarter
		FROM dbo.plnkal__
		UNION
		SELECT kal__ref, 2000 + CAST(jaar_ref AS int) AS YearID, DATEPART(QUARTER, DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)) AS QuarterID, CAST(mnd__ref AS int) AS MonthID, 27 AS DayID, dag___27 AS BusinessDay,CAST(DATEADD(qq,DATEDIFF(qq, 0, DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)),0) AS DATE) AS FirstDayOfQuarter,CAST(DATEADD (dd, -1, DATEADD(qq, DATEDIFF(qq, 0,  DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)) +1, 0)) AS DATE) AS LastDayOfQuarter
		FROM dbo.plnkal__
		UNION
		SELECT kal__ref, 2000 + CAST(jaar_ref AS int) AS YearID, DATEPART(QUARTER, DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)) AS QuarterID, CAST(mnd__ref AS int) AS MonthID, 28 AS DayID, dag___28 AS BusinessDay,CAST(DATEADD(qq,DATEDIFF(qq, 0, DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)),0) AS DATE) AS FirstDayOfQuarter,CAST(DATEADD (dd, -1, DATEADD(qq, DATEDIFF(qq, 0,  DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)) +1, 0)) AS DATE) AS LastDayOfQuarter
		FROM dbo.plnkal__
		UNION
		SELECT kal__ref, 2000 + CAST(jaar_ref AS int) AS YearID, DATEPART(QUARTER, DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)) AS QuarterID, CAST(mnd__ref AS int) AS MonthID, 29 AS DayID, dag___29 AS BusinessDay,CAST(DATEADD(qq,DATEDIFF(qq, 0, DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)),0) AS DATE) AS FirstDayOfQuarter,CAST(DATEADD (dd, -1, DATEADD(qq, DATEDIFF(qq, 0,  DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)) +1, 0)) AS DATE) AS LastDayOfQuarter
		FROM dbo.plnkal__
		UNION
		SELECT kal__ref, 2000 + CAST(jaar_ref AS int) AS YearID, DATEPART(QUARTER, DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)) AS QuarterID, CAST(mnd__ref AS int) AS MonthID, 30 AS DayID, dag___30 AS BusinessDay,CAST(DATEADD(qq,DATEDIFF(qq, 0, DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)),0) AS DATE) AS FirstDayOfQuarter,CAST(DATEADD (dd, -1, DATEADD(qq, DATEDIFF(qq, 0,  DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)) +1, 0)) AS DATE) AS LastDayOfQuarter
		FROM dbo.plnkal__
		UNION
		SELECT kal__ref, 2000 + CAST(jaar_ref AS int) AS YearID, DATEPART(QUARTER, DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)) AS QuarterID, CAST(mnd__ref AS int) AS MonthID, 31 AS DayID, dag___31 AS BusinessDay,CAST(DATEADD(qq,DATEDIFF(qq, 0, DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)),0) AS DATE) AS FirstDayOfQuarter,CAST(DATEADD (dd, -1, DATEADD(qq, DATEDIFF(qq, 0,  DATEFROMPARTS(2000 + CAST(jaar_ref AS int), CAST(mnd__ref AS int), 1)) +1, 0)) AS DATE) AS LastDayOfQuarter
		FROM dbo.plnkal__) AS sc
		WHERE sc.kal__ref = N'000000' AND sc.BusinessDay IN ('Y', 'N')
	) AS StandardCalendar

	END TRY
		BEGIN CATCH
			SELECT   
				ERROR_NUMBER() AS ErrorNumber  
				,ERROR_SEVERITY() AS ErrorSeverity  
				,ERROR_STATE() AS ErrorState  
				,ERROR_PROCEDURE() AS ErrorProcedure  
				,ERROR_LINE() AS ErrorLine  
				,ERROR_MESSAGE() AS ErrorMessage;
			IF @@TRANCOUNT > 0  			
				ROLLBACK TRANSACTION;
		END CATCH;
		
		IF @@TRANCOUNT > 0
			COMMIT TRANSACTION;	
RETURN @@TRANCOUNT --SUCCESS

