SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hisolv__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[hisolv__](
	[his__vnr] [int] NOT NULL,
	[jobnr___] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[user____] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[olv__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[bsbonref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[compl___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstw_dat] [date] NOT NULL,
	[tstw_uur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstw_com] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[laant___] [float] NOT NULL,
	[aaant___] [float] NOT NULL,
	[aaant_pk] [float] NOT NULL,
	[aaant_pl] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [hisolvi0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisolv__his__vnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisolv__] ADD  CONSTRAINT [DF_hisolv__his__vnr]  DEFAULT ((0)) FOR [his__vnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisolv__jobnr___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisolv__] ADD  CONSTRAINT [DF_hisolv__jobnr___]  DEFAULT ('') FOR [jobnr___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisolv__user____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisolv__] ADD  CONSTRAINT [DF_hisolv__user____]  DEFAULT ('') FOR [user____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisolv__olv__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisolv__] ADD  CONSTRAINT [DF_hisolv__olv__srt]  DEFAULT ('') FOR [olv__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisolv__bsbonref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisolv__] ADD  CONSTRAINT [DF_hisolv__bsbonref]  DEFAULT ('') FOR [bsbonref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisolv__compl___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisolv__] ADD  CONSTRAINT [DF_hisolv__compl___]  DEFAULT ('') FOR [compl___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisolv__tstw_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisolv__] ADD  CONSTRAINT [DF_hisolv__tstw_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [tstw_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisolv__tstw_uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisolv__] ADD  CONSTRAINT [DF_hisolv__tstw_uur]  DEFAULT ('') FOR [tstw_uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisolv__tstw_com]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisolv__] ADD  CONSTRAINT [DF_hisolv__tstw_com]  DEFAULT ('') FOR [tstw_com]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisolv__laant___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisolv__] ADD  CONSTRAINT [DF_hisolv__laant___]  DEFAULT ((0)) FOR [laant___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisolv__aaant___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisolv__] ADD  CONSTRAINT [DF_hisolv__aaant___]  DEFAULT ((0)) FOR [aaant___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisolv__aaant_pk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisolv__] ADD  CONSTRAINT [DF_hisolv__aaant_pk]  DEFAULT ((0)) FOR [aaant_pk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisolv__aaant_pl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisolv__] ADD  CONSTRAINT [DF_hisolv__aaant_pl]  DEFAULT ((0)) FOR [aaant_pl]
END

