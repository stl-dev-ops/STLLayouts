SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlBusinessDaysCalendar]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlBusinessDaysCalendar](
	[BusinessDate] [date] NOT NULL,
	[YearID] [int] NOT NULL,
	[QuarterID] [int] NOT NULL,
	[MonthID] [tinyint] NOT NULL,
	[DayID] [tinyint] NOT NULL,
	[BusinessDay] [nchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[WeekDayID] [tinyint] NOT NULL,
	[FiscalYearID] [int] NOT NULL,
	[FirstDayOfQuarter] [date] NOT NULL,
	[LastDayOfQuarter] [date] NOT NULL,
	[Created] [datetime] NOT NULL,
 CONSTRAINT [PK_stlBusinessDaysCalendar] PRIMARY KEY CLUSTERED 
(
	[BusinessDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stlBusinessDaysCalendar]') AND name = N'IX_stlBusinessDaysCalendarIsWorkingDay')
CREATE UNIQUE NONCLUSTERED INDEX [IX_stlBusinessDaysCalendarIsWorkingDay] ON [dbo].[stlBusinessDaysCalendar]
(
	[BusinessDay] DESC,
	[BusinessDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlBusinessDaysCalendar_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlBusinessDaysCalendar] ADD  CONSTRAINT [DF_stlBusinessDaysCalendar_Created]  DEFAULT (getdate()) FOR [Created]
END

