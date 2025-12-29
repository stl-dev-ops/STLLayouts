SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hafgfb__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[hafgfb__](
	[dgbk_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[bkj__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[fak__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[job__inl] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[vdok__nr] [nvarchar](11) COLLATE Latin1_General_CI_AS NOT NULL,
	[betd__bm] [float] NOT NULL,
	[betd__vm] [float] NOT NULL,
	[munt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[cdeklaap] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[betd_dat] [date] NOT NULL,
	[rf_meded] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[comment_] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [hafgfbi0] PRIMARY KEY CLUSTERED 
(
	[dgbk_ref] ASC,
	[bkj__ref] ASC,
	[fak__ref] ASC,
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hafgfb__dgbk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hafgfb__] ADD  CONSTRAINT [DF_hafgfb__dgbk_ref]  DEFAULT ('') FOR [dgbk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hafgfb__bkj__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hafgfb__] ADD  CONSTRAINT [DF_hafgfb__bkj__ref]  DEFAULT ('') FOR [bkj__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hafgfb__fak__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hafgfb__] ADD  CONSTRAINT [DF_hafgfb__fak__ref]  DEFAULT ('') FOR [fak__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hafgfb__job__inl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hafgfb__] ADD  CONSTRAINT [DF_hafgfb__job__inl]  DEFAULT ('') FOR [job__inl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hafgfb__vdok__nr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hafgfb__] ADD  CONSTRAINT [DF_hafgfb__vdok__nr]  DEFAULT ('') FOR [vdok__nr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hafgfb__betd__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hafgfb__] ADD  CONSTRAINT [DF_hafgfb__betd__bm]  DEFAULT ((0)) FOR [betd__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hafgfb__betd__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hafgfb__] ADD  CONSTRAINT [DF_hafgfb__betd__vm]  DEFAULT ((0)) FOR [betd__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hafgfb__munt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hafgfb__] ADD  CONSTRAINT [DF_hafgfb__munt_ref]  DEFAULT ('') FOR [munt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hafgfb__kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hafgfb__] ADD  CONSTRAINT [DF_hafgfb__kla__ref]  DEFAULT ('') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hafgfb__cdeklaap]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hafgfb__] ADD  CONSTRAINT [DF_hafgfb__cdeklaap]  DEFAULT ('') FOR [cdeklaap]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hafgfb__betd_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hafgfb__] ADD  CONSTRAINT [DF_hafgfb__betd_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [betd_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hafgfb__rf_meded]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hafgfb__] ADD  CONSTRAINT [DF_hafgfb__rf_meded]  DEFAULT ('') FOR [rf_meded]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hafgfb__comment_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hafgfb__] ADD  CONSTRAINT [DF_hafgfb__comment_]  DEFAULT ('') FOR [comment_]
END

