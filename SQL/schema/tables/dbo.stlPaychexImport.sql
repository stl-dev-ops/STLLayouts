SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlPaychexImport]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlPaychexImport](
	[stlPaychexImportID] [int] IDENTITY(1,1) NOT NULL,
	[empNo] [int] NOT NULL,
	[lastName] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[firstName] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[clockingDate] [date] NOT NULL,
	[clockInType] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[clockInTime] [time](7) NOT NULL,
	[clockOutType] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[clockOutTime] [time](7) NOT NULL,
	[regular] [float] NOT NULL,
	[ot] [float] NOT NULL,
	[totalPaid] [float] NOT NULL,
	[unpaid] [float] NOT NULL,
	[OldstlPaychexImportID] [int] NOT NULL,
	[fixedClockingDate] [date] NULL
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPaychexImport_empNo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPaychexImport] ADD  CONSTRAINT [DF_stlPaychexImport_empNo]  DEFAULT ((0)) FOR [empNo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPaychexImport_lastName]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPaychexImport] ADD  CONSTRAINT [DF_stlPaychexImport_lastName]  DEFAULT ('') FOR [lastName]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPaychexImport_firstName]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPaychexImport] ADD  CONSTRAINT [DF_stlPaychexImport_firstName]  DEFAULT ('') FOR [firstName]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPaychexImport_clockInType]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPaychexImport] ADD  CONSTRAINT [DF_stlPaychexImport_clockInType]  DEFAULT ('') FOR [clockInType]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPaychexImport_clockOutType]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPaychexImport] ADD  CONSTRAINT [DF_stlPaychexImport_clockOutType]  DEFAULT ('') FOR [clockOutType]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPaychexImport_regular]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPaychexImport] ADD  CONSTRAINT [DF_stlPaychexImport_regular]  DEFAULT ((0)) FOR [regular]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPaychexImport_ot]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPaychexImport] ADD  CONSTRAINT [DF_stlPaychexImport_ot]  DEFAULT ((0)) FOR [ot]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPaychexImport_totalPaid]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPaychexImport] ADD  CONSTRAINT [DF_stlPaychexImport_totalPaid]  DEFAULT ((0)) FOR [totalPaid]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPaychexImport_unpaid]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPaychexImport] ADD  CONSTRAINT [DF_stlPaychexImport_unpaid]  DEFAULT ((0)) FOR [unpaid]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPaychexImport_OldstlPaychexImportID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPaychexImport] ADD  CONSTRAINT [DF_stlPaychexImport_OldstlPaychexImportID]  DEFAULT ((0)) FOR [OldstlPaychexImportID]
END

