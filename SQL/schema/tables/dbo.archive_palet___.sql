SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[archive_palet___]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[archive_palet___](
	[pal__ref] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[pallevid] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[pal__oms] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[datum___] [date] NOT NULL,
	[vak__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[dos__ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[pal__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnr_archive] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [palet_i0] PRIMARY KEY CLUSTERED 
(
	[jobnr_archive] ASC,
	[pal__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_archive_palet___pal__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[archive_palet___] ADD  CONSTRAINT [DF_archive_palet___pal__ref]  DEFAULT ('') FOR [pal__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_archive_palet___pallevid]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[archive_palet___] ADD  CONSTRAINT [DF_archive_palet___pallevid]  DEFAULT ('') FOR [pallevid]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_archive_palet___pal__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[archive_palet___] ADD  CONSTRAINT [DF_archive_palet___pal__oms]  DEFAULT ('') FOR [pal__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_archive_palet___datum___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[archive_palet___] ADD  CONSTRAINT [DF_archive_palet___datum___]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datum___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_archive_palet___vak__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[archive_palet___] ADD  CONSTRAINT [DF_archive_palet___vak__ref]  DEFAULT ('') FOR [vak__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_archive_palet___dos__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[archive_palet___] ADD  CONSTRAINT [DF_archive_palet___dos__ref]  DEFAULT ('') FOR [dos__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_archive_palet___lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[archive_palet___] ADD  CONSTRAINT [DF_archive_palet___lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_archive_palet___pal__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[archive_palet___] ADD  CONSTRAINT [DF_archive_palet___pal__srt]  DEFAULT ('1') FOR [pal__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_archive_palet___jobnr_archive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[archive_palet___] ADD  CONSTRAINT [DF_archive_palet___jobnr_archive]  DEFAULT ('') FOR [jobnr_archive]
END

