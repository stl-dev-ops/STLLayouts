SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[artikp__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[artikp__](
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[dat__wij] [date] NOT NULL,
	[aantal_1] [float] NOT NULL,
	[aantal_2] [float] NOT NULL,
	[aantal_3] [float] NOT NULL,
	[aantal_4] [float] NOT NULL,
	[aantal_5] [float] NOT NULL,
	[aantal_6] [float] NOT NULL,
	[omschr_1] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_2] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_3] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_4] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_5] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_6] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[prysvm_1] [float] NOT NULL,
	[prysvm_2] [float] NOT NULL,
	[prysvm_3] [float] NOT NULL,
	[prysvm_4] [float] NOT NULL,
	[prysvm_5] [float] NOT NULL,
	[prysvm_6] [float] NOT NULL,
	[pakinh_1] [float] NOT NULL,
	[pakinh_2] [float] NOT NULL,
	[pakinh_3] [float] NOT NULL,
	[pakinh_4] [float] NOT NULL,
	[pakinh_5] [float] NOT NULL,
	[pakinh_6] [float] NOT NULL,
	[bstmin_1] [float] NOT NULL,
	[bstmin_2] [float] NOT NULL,
	[bstmin_3] [float] NOT NULL,
	[bstmin_4] [float] NOT NULL,
	[bstmin_5] [float] NOT NULL,
	[bstmin_6] [float] NOT NULL,
	[bstinh_1] [float] NOT NULL,
	[bstinh_2] [float] NOT NULL,
	[bstinh_3] [float] NOT NULL,
	[bstinh_4] [float] NOT NULL,
	[bstinh_5] [float] NOT NULL,
	[bstinh_6] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [artikp_x] PRIMARY KEY CLUSTERED 
(
	[art__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[artikp__]') AND name = N'artikp_y')
CREATE NONCLUSTERED INDEX [artikp_y] ON [dbo].[artikp__]
(
	[dat__wij] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikp__art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikp__] ADD  CONSTRAINT [DF_artikp__art__ref]  DEFAULT ('') FOR [art__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikp__dat__wij]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikp__] ADD  CONSTRAINT [DF_artikp__dat__wij]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dat__wij]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikp__aantal_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikp__] ADD  CONSTRAINT [DF_artikp__aantal_1]  DEFAULT ((0)) FOR [aantal_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikp__aantal_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikp__] ADD  CONSTRAINT [DF_artikp__aantal_2]  DEFAULT ((0)) FOR [aantal_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikp__aantal_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikp__] ADD  CONSTRAINT [DF_artikp__aantal_3]  DEFAULT ((0)) FOR [aantal_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikp__aantal_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikp__] ADD  CONSTRAINT [DF_artikp__aantal_4]  DEFAULT ((0)) FOR [aantal_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikp__aantal_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikp__] ADD  CONSTRAINT [DF_artikp__aantal_5]  DEFAULT ((0)) FOR [aantal_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikp__aantal_6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikp__] ADD  CONSTRAINT [DF_artikp__aantal_6]  DEFAULT ((0)) FOR [aantal_6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikp__omschr_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikp__] ADD  CONSTRAINT [DF_artikp__omschr_1]  DEFAULT ('') FOR [omschr_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikp__omschr_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikp__] ADD  CONSTRAINT [DF_artikp__omschr_2]  DEFAULT ('') FOR [omschr_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikp__omschr_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikp__] ADD  CONSTRAINT [DF_artikp__omschr_3]  DEFAULT ('') FOR [omschr_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikp__omschr_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikp__] ADD  CONSTRAINT [DF_artikp__omschr_4]  DEFAULT ('') FOR [omschr_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikp__omschr_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikp__] ADD  CONSTRAINT [DF_artikp__omschr_5]  DEFAULT ('') FOR [omschr_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikp__omschr_6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikp__] ADD  CONSTRAINT [DF_artikp__omschr_6]  DEFAULT ('') FOR [omschr_6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikp__prysvm_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikp__] ADD  CONSTRAINT [DF_artikp__prysvm_1]  DEFAULT ((0)) FOR [prysvm_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikp__prysvm_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikp__] ADD  CONSTRAINT [DF_artikp__prysvm_2]  DEFAULT ((0)) FOR [prysvm_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikp__prysvm_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikp__] ADD  CONSTRAINT [DF_artikp__prysvm_3]  DEFAULT ((0)) FOR [prysvm_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikp__prysvm_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikp__] ADD  CONSTRAINT [DF_artikp__prysvm_4]  DEFAULT ((0)) FOR [prysvm_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikp__prysvm_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikp__] ADD  CONSTRAINT [DF_artikp__prysvm_5]  DEFAULT ((0)) FOR [prysvm_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikp__prysvm_6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikp__] ADD  CONSTRAINT [DF_artikp__prysvm_6]  DEFAULT ((0)) FOR [prysvm_6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikp__pakinh_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikp__] ADD  CONSTRAINT [DF_artikp__pakinh_1]  DEFAULT ((0)) FOR [pakinh_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikp__pakinh_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikp__] ADD  CONSTRAINT [DF_artikp__pakinh_2]  DEFAULT ((0)) FOR [pakinh_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikp__pakinh_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikp__] ADD  CONSTRAINT [DF_artikp__pakinh_3]  DEFAULT ((0)) FOR [pakinh_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikp__pakinh_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikp__] ADD  CONSTRAINT [DF_artikp__pakinh_4]  DEFAULT ((0)) FOR [pakinh_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikp__pakinh_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikp__] ADD  CONSTRAINT [DF_artikp__pakinh_5]  DEFAULT ((0)) FOR [pakinh_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikp__pakinh_6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikp__] ADD  CONSTRAINT [DF_artikp__pakinh_6]  DEFAULT ((0)) FOR [pakinh_6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikp__bstmin_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikp__] ADD  CONSTRAINT [DF_artikp__bstmin_1]  DEFAULT ((0)) FOR [bstmin_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikp__bstmin_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikp__] ADD  CONSTRAINT [DF_artikp__bstmin_2]  DEFAULT ((0)) FOR [bstmin_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikp__bstmin_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikp__] ADD  CONSTRAINT [DF_artikp__bstmin_3]  DEFAULT ((0)) FOR [bstmin_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikp__bstmin_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikp__] ADD  CONSTRAINT [DF_artikp__bstmin_4]  DEFAULT ((0)) FOR [bstmin_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikp__bstmin_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikp__] ADD  CONSTRAINT [DF_artikp__bstmin_5]  DEFAULT ((0)) FOR [bstmin_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikp__bstmin_6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikp__] ADD  CONSTRAINT [DF_artikp__bstmin_6]  DEFAULT ((0)) FOR [bstmin_6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikp__bstinh_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikp__] ADD  CONSTRAINT [DF_artikp__bstinh_1]  DEFAULT ((0)) FOR [bstinh_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikp__bstinh_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikp__] ADD  CONSTRAINT [DF_artikp__bstinh_2]  DEFAULT ((0)) FOR [bstinh_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikp__bstinh_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikp__] ADD  CONSTRAINT [DF_artikp__bstinh_3]  DEFAULT ((0)) FOR [bstinh_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikp__bstinh_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikp__] ADD  CONSTRAINT [DF_artikp__bstinh_4]  DEFAULT ((0)) FOR [bstinh_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikp__bstinh_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikp__] ADD  CONSTRAINT [DF_artikp__bstinh_5]  DEFAULT ((0)) FOR [bstinh_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikp__bstinh_6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikp__] ADD  CONSTRAINT [DF_artikp__bstinh_6]  DEFAULT ((0)) FOR [bstinh_6]
END

