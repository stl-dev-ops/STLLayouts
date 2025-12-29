SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlPD_FtSum]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlPD_FtSum](
	[stlPD_FtDumID] [int] IDENTITY(1,1) NOT NULL,
	[pdDt] [date] NOT NULL,
	[shift] [int] NOT NULL,
	[hour] [int] NOT NULL,
	[wp___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[wn___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[akt___ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[goodFt] [float] NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [PK_stlPD_FtSum] PRIMARY KEY CLUSTERED 
(
	[stlPD_FtDumID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPD_FtSum_shift]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPD_FtSum] ADD  CONSTRAINT [DF_stlPD_FtSum_shift]  DEFAULT ((0)) FOR [shift]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPD_FtSum_hour]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPD_FtSum] ADD  CONSTRAINT [DF_stlPD_FtSum_hour]  DEFAULT ((0)) FOR [hour]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPD_FtSum_wp___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPD_FtSum] ADD  CONSTRAINT [DF_stlPD_FtSum_wp___ref]  DEFAULT ('') FOR [wp___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPD_FtSum_wn___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPD_FtSum] ADD  CONSTRAINT [DF_stlPD_FtSum_wn___ref]  DEFAULT ('') FOR [wn___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPD_FtSum_akt___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPD_FtSum] ADD  CONSTRAINT [DF_stlPD_FtSum_akt___ref]  DEFAULT ('') FOR [akt___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPD_FtSum_goodFt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPD_FtSum] ADD  CONSTRAINT [DF_stlPD_FtSum_goodFt]  DEFAULT ((0)) FOR [goodFt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPD_FtSum_ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPD_FtSum] ADD  CONSTRAINT [DF_stlPD_FtSum_ord__ref]  DEFAULT ('') FOR [ord__ref]
END

