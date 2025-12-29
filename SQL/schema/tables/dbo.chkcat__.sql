SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[chkcat__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[chkcat__](
	[chk__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[crea_dat] [date] NOT NULL,
	[blok_dat] [date] NOT NULL,
	[komment_] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[qa_level] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[prd__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[off1_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[prfm_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[off2_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [chkcati0] PRIMARY KEY CLUSTERED 
(
	[chk__ref] ASC,
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_chkcat__chk__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[chkcat__] ADD  CONSTRAINT [DF_chkcat__chk__ref]  DEFAULT ('') FOR [chk__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_chkcat__crea_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[chkcat__] ADD  CONSTRAINT [DF_chkcat__crea_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [crea_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_chkcat__blok_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[chkcat__] ADD  CONSTRAINT [DF_chkcat__blok_dat]  DEFAULT (CONVERT([date],'20491231',(112))) FOR [blok_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_chkcat__komment_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[chkcat__] ADD  CONSTRAINT [DF_chkcat__komment_]  DEFAULT ('') FOR [komment_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_chkcat__qa_level]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[chkcat__] ADD  CONSTRAINT [DF_chkcat__qa_level]  DEFAULT ('') FOR [qa_level]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_chkcat__kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[chkcat__] ADD  CONSTRAINT [DF_chkcat__kla__ref]  DEFAULT ('') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_chkcat__prd__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[chkcat__] ADD  CONSTRAINT [DF_chkcat__prd__ref]  DEFAULT ('') FOR [prd__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_chkcat__off1_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[chkcat__] ADD  CONSTRAINT [DF_chkcat__off1_ref]  DEFAULT ('') FOR [off1_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_chkcat__prfm_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[chkcat__] ADD  CONSTRAINT [DF_chkcat__prfm_ref]  DEFAULT ('') FOR [prfm_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_chkcat__off2_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[chkcat__] ADD  CONSTRAINT [DF_chkcat__off2_ref]  DEFAULT ('') FOR [off2_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_chkcat__vrg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[chkcat__] ADD  CONSTRAINT [DF_chkcat__vrg__ref]  DEFAULT ('') FOR [vrg__ref]
END

