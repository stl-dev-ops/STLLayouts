SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[divdok__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[divdok__](
	[stkd_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dgbk_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnr_vw] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[job__inl] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[dossier_] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[bkj__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[peri_ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[dok__dat] [date] NOT NULL,
	[simuleer] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [idx_ddo1] PRIMARY KEY CLUSTERED 
(
	[bkj__ref] ASC,
	[dgbk_ref] ASC,
	[stkd_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_divdok__stkd_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[divdok__] ADD  CONSTRAINT [DF_divdok__stkd_ref]  DEFAULT ('') FOR [stkd_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_divdok__dgbk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[divdok__] ADD  CONSTRAINT [DF_divdok__dgbk_ref]  DEFAULT ('') FOR [dgbk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_divdok__jobnr_vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[divdok__] ADD  CONSTRAINT [DF_divdok__jobnr_vw]  DEFAULT ('') FOR [jobnr_vw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_divdok__job__inl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[divdok__] ADD  CONSTRAINT [DF_divdok__job__inl]  DEFAULT ('') FOR [job__inl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_divdok__dossier_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[divdok__] ADD  CONSTRAINT [DF_divdok__dossier_]  DEFAULT ('') FOR [dossier_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_divdok__bkj__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[divdok__] ADD  CONSTRAINT [DF_divdok__bkj__ref]  DEFAULT ('') FOR [bkj__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_divdok__peri_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[divdok__] ADD  CONSTRAINT [DF_divdok__peri_ref]  DEFAULT ('') FOR [peri_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_divdok__dok__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[divdok__] ADD  CONSTRAINT [DF_divdok__dok__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dok__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_divdok__simuleer]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[divdok__] ADD  CONSTRAINT [DF_divdok__simuleer]  DEFAULT ('N') FOR [simuleer]
END

