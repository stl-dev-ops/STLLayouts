SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hisgts__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[hisgts__](
	[his__vnr] [int] NOT NULL,
	[jobnr_vw] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[datum___] [date] NOT NULL,
	[uur_____] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[user____] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[grbonref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[grs__vnr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[compl___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[tst__new] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fiat__ok] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kom__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[fiat_com] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [hisgtsi1] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[hisgts__]') AND name = N'gts__id1')
CREATE NONCLUSTERED INDEX [gts__id1] ON [dbo].[hisgts__]
(
	[grbonref] ASC,
	[grs__vnr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgts__his__vnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgts__] ADD  CONSTRAINT [DF_hisgts__his__vnr]  DEFAULT ((0)) FOR [his__vnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgts__jobnr_vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgts__] ADD  CONSTRAINT [DF_hisgts__jobnr_vw]  DEFAULT ('') FOR [jobnr_vw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgts__datum___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgts__] ADD  CONSTRAINT [DF_hisgts__datum___]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datum___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgts__uur_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgts__] ADD  CONSTRAINT [DF_hisgts__uur_____]  DEFAULT ('') FOR [uur_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgts__user____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgts__] ADD  CONSTRAINT [DF_hisgts__user____]  DEFAULT ('') FOR [user____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgts__grbonref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgts__] ADD  CONSTRAINT [DF_hisgts__grbonref]  DEFAULT ('') FOR [grbonref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgts__grs__vnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgts__] ADD  CONSTRAINT [DF_hisgts__grs__vnr]  DEFAULT ('') FOR [grs__vnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgts__compl___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgts__] ADD  CONSTRAINT [DF_hisgts__compl___]  DEFAULT ('') FOR [compl___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgts__tst__new]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgts__] ADD  CONSTRAINT [DF_hisgts__tst__new]  DEFAULT ('') FOR [tst__new]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgts__fiat__ok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgts__] ADD  CONSTRAINT [DF_hisgts__fiat__ok]  DEFAULT ('') FOR [fiat__ok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgts__kom__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgts__] ADD  CONSTRAINT [DF_hisgts__kom__ref]  DEFAULT ('') FOR [kom__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgts__fiat_com]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgts__] ADD  CONSTRAINT [DF_hisgts__fiat_com]  DEFAULT ('') FOR [fiat_com]
END

