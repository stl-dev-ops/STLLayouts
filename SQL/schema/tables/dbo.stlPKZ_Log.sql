SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlPKZ_Log]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlPKZ_Log](
	[stlPKZ_LogID] [int] IDENTITY(1,1) NOT NULL,
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__rpn] [nvarchar](17) COLLATE Latin1_General_CI_AS NOT NULL,
	[art_oms1] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[thisWeekNeeded] [float] NOT NULL,
	[nextWeekNeeded] [float] NOT NULL,
	[qtyMade] [float] NOT NULL,
	[logDt] [datetime] NOT NULL,
	[operator] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlPKZ_Log] PRIMARY KEY CLUSTERED 
(
	[stlPKZ_LogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPKZ_Log_art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPKZ_Log] ADD  CONSTRAINT [DF_stlPKZ_Log_art__ref]  DEFAULT ('') FOR [art__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPKZ_Log_art__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPKZ_Log] ADD  CONSTRAINT [DF_stlPKZ_Log_art__rpn]  DEFAULT ('') FOR [art__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPKZ_Log_art_oms1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPKZ_Log] ADD  CONSTRAINT [DF_stlPKZ_Log_art_oms1]  DEFAULT ('') FOR [art_oms1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPKZ_Log_thisWeekNeeded]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPKZ_Log] ADD  CONSTRAINT [DF_stlPKZ_Log_thisWeekNeeded]  DEFAULT ((0)) FOR [thisWeekNeeded]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPKZ_Log_nextWeekNeeded]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPKZ_Log] ADD  CONSTRAINT [DF_stlPKZ_Log_nextWeekNeeded]  DEFAULT ((0)) FOR [nextWeekNeeded]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPKZ_Log_qtyMade]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPKZ_Log] ADD  CONSTRAINT [DF_stlPKZ_Log_qtyMade]  DEFAULT ((0)) FOR [qtyMade]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPKZ_Log_logDt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPKZ_Log] ADD  CONSTRAINT [DF_stlPKZ_Log_logDt]  DEFAULT (getdate()) FOR [logDt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPKZ_Log_operator]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPKZ_Log] ADD  CONSTRAINT [DF_stlPKZ_Log_operator]  DEFAULT ('') FOR [operator]
END

