SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[vkpvlg__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[vkpvlg__](
	[beg__dat] [date] NOT NULL,
	[rcvd_vlg] [int] NOT NULL,
	[geblokk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dgbk_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[bkj__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[fak__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dos__ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[prfx_vlg] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [vkpvlgi0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[vkpvlg__]') AND name = N'vkpvlgi1')
CREATE NONCLUSTERED INDEX [vkpvlgi1] ON [dbo].[vkpvlg__]
(
	[dos__ref] ASC,
	[dgbk_ref] ASC,
	[bkj__ref] ASC,
	[fak__ref] ASC,
	[beg__dat] ASC,
	[geblokk_] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpvlg__beg__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpvlg__] ADD  CONSTRAINT [DF_vkpvlg__beg__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [beg__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpvlg__rcvd_vlg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpvlg__] ADD  CONSTRAINT [DF_vkpvlg__rcvd_vlg]  DEFAULT ((0)) FOR [rcvd_vlg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpvlg__geblokk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpvlg__] ADD  CONSTRAINT [DF_vkpvlg__geblokk_]  DEFAULT ('') FOR [geblokk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpvlg__dgbk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpvlg__] ADD  CONSTRAINT [DF_vkpvlg__dgbk_ref]  DEFAULT ('') FOR [dgbk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpvlg__bkj__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpvlg__] ADD  CONSTRAINT [DF_vkpvlg__bkj__ref]  DEFAULT ('') FOR [bkj__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpvlg__fak__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpvlg__] ADD  CONSTRAINT [DF_vkpvlg__fak__ref]  DEFAULT ('') FOR [fak__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpvlg__dos__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpvlg__] ADD  CONSTRAINT [DF_vkpvlg__dos__ref]  DEFAULT ('') FOR [dos__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpvlg__prfx_vlg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpvlg__] ADD  CONSTRAINT [DF_vkpvlg__prfx_vlg]  DEFAULT ('') FOR [prfx_vlg]
END

